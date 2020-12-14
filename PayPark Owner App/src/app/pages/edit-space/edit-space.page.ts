import { Component, OnInit } from '@angular/core';
import { AlertController, NavController } from '@ionic/angular';
import { ApiService } from 'src/app/service/api.service';

@Component({
  selector: 'app-edit-space',
  templateUrl: './edit-space.page.html',
  styleUrls: ['./edit-space.page.scss'],
})
export class EditSpacePage implements OnInit {

  guardList = [];
  oldGuardList = [];
  guardData = [];
  tempGuardData = [];

  data: any = {};
  parking = false;
  parkingZone: Array<any> = [];
  lat = 51.678418;
  lng = 7.809007;
  markerD = true;
  facilities: any = [];
  id: string;
  error: any = {};
  constructor(private ntrl: NavController, private api: ApiService) {
    this.id = localStorage.getItem('defaultParking');

    this.api.authGetReq('space/' + this.id).subscribe((res: any) => {
      if (res.data.space) {
        this.data = res.data.space;
        if (res.data.space.zones) {
          res.data.space.zones.forEach(zone => {
            this.parkingZone.push({
              name: zone.name,
              size: zone.slots.length,
              id: zone.id
            });
          });
        }
      }

    }, err => {
      console.error('err', err);

    });

    this.api.getWithAuth('facilities').subscribe((res: any) => {
      this.facilities = res.data;

    }, err => {
      console.log('err', err);

    });

  }
  ionViewWillEnter() {
    this.api.authGetReq('available/guard').subscribe((res: any) => {
      this.tempGuardData = res.data;
    }, err => {
      console.error('err', err);

    });
  }
  ngOnInit() {
    setTimeout(() => {
      if (this.data.guards.length > 0 && this.tempGuardData.length > 0) {

        this.guardData = [...this.tempGuardData, ...this.data.guards];
      } else if (this.data.guards.length > 0) {
        this.guardData = [...this.data.guards];

      } else if (this.tempGuardData.length > 0) {

        this.guardData = [...this.tempGuardData];
      }
      this.data.guards.forEach(e => {
        this.guardList.push(e.id);
      });
      this.oldGuardList = this.guardList;
    }, 5000);
  }

  markerChange(e) {
    this.data.lat = e.coords.lat;
    this.data.lng = e.coords.lng;

  }

  addNewGuard() {
    this.ntrl.navigateForward('park-guard');
  }
  parkSpace() {

    this.data.guardList = this.guardList;
    this.data.oldGuardList = this.oldGuardList;
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
    delete this.data.facilitiesData;
    delete this.data.guards;
    delete this.data.zones;
    delete this.data.sd;
    this.data.parkingZone = this.parkingZone;

    this.api.authUpdateReq('space/' + this.data.id, this.data).subscribe((res: any) => {
      if (res.success === true) {
        this.api.presentToast(res.msg);

        this.ntrl.navigateForward(['home']);

      }

    }, err => {
      console.log('err', err);
      if (err.status === 422) {
        this.error = err.error.errors;
        this.api.presentToast(err.error.message);
      }

    });
  }
  editZone() {
    this.ntrl.navigateForward('zone-edit');
  }

}
