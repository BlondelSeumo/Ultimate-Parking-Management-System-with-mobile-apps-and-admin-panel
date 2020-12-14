import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';
import { ActivatedRoute } from '@angular/router';
import { ApiService } from './../../service/api.service';
import { ZXingScannerComponent } from '@zxing/ngx-scanner';
import { BehaviorSubject } from 'rxjs';
import { BarcodeFormat } from '@zxing/library';
import { AndroidPermissions } from '@ionic-native/android-permissions/ngx';

@Component({
  selector: 'app-scanner',
  templateUrl: './scanner.page.html',
  styleUrls: ['./scanner.page.scss'],
})
export class ScannerPage implements OnInit {

  availableDevices: MediaDeviceInfo[];
  currentDevice: MediaDeviceInfo = null;

  formatsEnabled: BarcodeFormat[] = [
    BarcodeFormat.CODE_128,
    BarcodeFormat.DATA_MATRIX,
    BarcodeFormat.EAN_13,
    BarcodeFormat.QR_CODE,
  ];

  hasDevices: boolean;
  hasPermission: boolean;

  qrResultString: string;

  torchEnabled = false;
  torchAvailable$ = new BehaviorSubject<boolean>(false);
  tryHarder = false;

  id: string;
  booking: any = {};
  scanner: ZXingScannerComponent;
  constructor(private ntrl: NavController,
    public activeRoute: ActivatedRoute, private api: ApiService, private androidPermissions: AndroidPermissions) {
    this.id = this.activeRoute.snapshot.paramMap.get('id');

    this.androidPermissions.checkPermission(this.androidPermissions.PERMISSION.CAMERA).then(status => {
      if (!status.hasPermission) {

        this.androidPermissions.requestPermission(this.androidPermissions.PERMISSION.CAMERA).then(request => {
          console.log('Success requesting CAMERA permission:', request);

        }, (err) => {
          console.log('Failed to set permission:', err);

        });
      }
    });


  }

  clearResult(): void {
    this.qrResultString = null;
  }

  onCamerasFound(devices: MediaDeviceInfo[]): void {
    this.availableDevices = devices;
    this.hasDevices = Boolean(devices && devices.length);
  }

  onCodeResult(resultString: string) {
    this.qrResultString = resultString;
  }

  onDeviceSelectChange(selected: string) {
    const device = this.availableDevices.find(x => x.deviceId === selected);
    this.currentDevice = device || null;
  }


  onHasPermission(has: boolean) {
    this.hasPermission = has;
  }

  openInfoDialog() {
    const data = {
      hasDevices: this.hasDevices,
      hasPermission: this.hasPermission,
    };

  }

  onTorchCompatible(isCompatible: boolean): void {
    this.torchAvailable$.next(isCompatible || false);
  }

  toggleTorch(): void {
    this.torchEnabled = !this.torchEnabled;
  }

  toggleTryHarder(): void {
    this.tryHarder = !this.tryHarder;
  }

  ngOnInit() {
    this.androidPermissions.checkPermission(this.androidPermissions.PERMISSION.CAMERA).then(
      result => console.log('Has permission?', result.hasPermission),
      err => this.androidPermissions.requestPermission(this.androidPermissions.PERMISSION.CAMERA)
    );

    if (this.id) {
      this.api.startLoader();

      this.api.authGetReq('booking/' + this.id).subscribe((res: any) => {

        this.booking = res.data;
        this.api.dismissLoader();

      }, err => {
        console.error('err', err);
        this.api.dismissLoader();

      });
    }
  }
  scanCompleteHandler(e) {
    // alert('deon' + e);
    this.getBookingDetail(e);

  }
  review() {
    this.ntrl.navigateForward(['review']);
  }
  getBookingDetail(e) {
    this.api.startLoader();

    this.api.authGetReq('booking/scanner/' + e).subscribe((res: any) => {
      this.booking = res.data;
      this.api.dismissLoader();

    }, err => {
      console.error('err', err);
      this.api.dismissLoader();

    });

  }
  changeStatus(bookingStatus, paymentStatus) {
    this.api.startLoader();

    const data = {
      status: bookingStatus,
      payment_status: paymentStatus,
    };
    this.api.authUpdateReq('booking/' + this.booking.id + '/update', data).subscribe((res: any) => {
      this.booking = res.data;
      this.api.dismissLoader();

    }, err => {
      console.error('err', err);
      this.api.dismissLoader();

    });
  }

}
