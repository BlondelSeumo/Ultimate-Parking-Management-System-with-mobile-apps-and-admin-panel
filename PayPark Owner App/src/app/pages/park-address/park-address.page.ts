import { Component, OnInit } from '@angular/core';
import { AlertController, NavController } from '@ionic/angular';
import { ApiService } from './../../service/api.service';

@Component({
  selector: 'app-park-address',
  templateUrl: './park-address.page.html',
  styleUrls: ['./park-address.page.scss']
})
export class ParkAddressPage implements OnInit {
  guardData = [];

  data: any = {};
  segment = 'basic';
  parkingZone: Array<any> = [];
  lat = 51.678418;
  lng = 7.809007;
  markerD = true;
  facilities: any = [];
  error: any = {};

  constructor(private ntrl: NavController, private api: ApiService) {
    this.data.lat = this.lat;
    this.data.lng = this.lng;
    this.api.getWithAuth('facilities').subscribe(
      (res: any) => {
        this.facilities = res.data;
      },
      err => {
        console.error('err', err);
      }
    );
  }
  ionViewWillEnter() {
    this.api.startLoader();

    this.api.authGetReq('available/guard').subscribe(
      (res: any) => {
        this.guardData = res.data;
        this.api.dismissLoader();
      },
      err => {
        this.api.dismissLoader();
        console.error('err', err);
      }
    );
  }
  ngOnInit() {}

  addNewZone() {
    this.parkingZone.push({
      name: '',
      size: 0
    });
  }
  markerChange(e) {
    this.data.lat = e.coords.lat;
    this.data.lng = e.coords.lng;
  }
  removeZone(index: number) {
    this.parkingZone.splice(index, 1);
  }
  addNewGuard() {
    this.ntrl.navigateForward('park-guard');
  }
  parkSpace() {
    this.api.startLoader();

    if (this.data.available_all_day) {
      this.data.available_all_day = 1;
    } else {
      this.data.available_all_day = 0;
    }
    if (this.data.offline_payment) {
      this.data.offline_payment = 1;
    } else {
      this.data.offline_payment = 0;
    }
    this.data.address =
      this.data.address +
      ' ' +
      this.data.city +
      ' ' +
      this.data.postal +
      ' ' +
      this.data.state +
      ' ' +
      this.data.country;
    this.data.parkingZone = this.parkingZone;
    this.api.authPostReq('space', this.data).subscribe(
      (res: any) => {
        this.api.dismissLoader();

        if (res.success === true) {
          this.api.presentToast(res.msg);
          this.ntrl.navigateForward(['home-map']);
        }
      },
      err => {
        this.api.dismissLoader();

        console.error('err', err);
        if (err.status === 422) {
          this.error = err.error.errors;
          this.api.presentToast(err.error.message);
        }
      }
    );
  }
}
