import { Component, OnInit } from '@angular/core';
import { ApiService } from './../../service/api.service';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-zone-edit',
  templateUrl: './zone-edit.page.html',
  styleUrls: ['./zone-edit.page.scss'],
})
export class ZoneEditPage implements OnInit {
  zoneData = [];
  addNew = false;
  newData: any = {};
  constructor(private api: ApiService, private ntrl: NavController) {

  }

  ngOnInit() {
    this.getZoneData();
  }
  getZoneData() {
    const id = localStorage.getItem('defaultParking');
    this.api.authGetReq(`zone/${id}/space`).subscribe((res: any) => {
      this.zoneData = res.data;
    }, err => {
      console.log('err', err);

    });
  }
  editZone(id) {

  }
  saveNewZone() {
    this.newData.space_id = localStorage.getItem('defaultParking');
    this.api.authPostReq('zone', this.newData).subscribe((res: any) => {
      if (res.success === true) {
        this.api.presentToast(res.msg);
        this.getZoneData();

      }
      this.newData = {};
      this.addNew = false;
    }, err => {
      this.newData = {};
      this.addNew = false;
      console.error('err', err);
    });
  }
  deleteZone(id) {
    this.api.authDeleteReq(`zone/${id}`).subscribe((res: any) => {
      if (res.success === true) {
        this.api.presentToast(res.msg);
        this.getZoneData();

      }
    }, err => {
      console.error('err', err);

    });

  }
  editSlot(id, name) {
    this.api.authUpdateReq(`slot/${id}/update`, { name }).subscribe((res: any) => {
      if (res.success === true) {
        this.api.presentToast(res.msg);
      }
    }, err => {
      console.error('err', err);
    });

  }
  deleteSlot(id) {
    this.api.authDeleteReq(`slot/${id}`).subscribe((res: any) => {
      if (res.success === true) {
        this.api.presentToast(res.msg);
        this.getZoneData();
      }
    }, err => {
      console.error('err', err);
    });

  }
  backMe() {
    this.ntrl.back();
  }
}
