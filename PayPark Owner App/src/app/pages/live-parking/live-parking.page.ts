import { Component, OnInit } from '@angular/core';
import { ApiService } from 'src/app/service/api.service';
import { ActivatedRoute } from '@angular/router';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-live-parking',
  templateUrl: './live-parking.page.html',
  styleUrls: ['./live-parking.page.scss'],
})
export class LiveParkingPage implements OnInit {

  segment: any = '';
  whereMyCar = 'entry';
  zoneData: Array<any> = [];
  id: string;
  vehicle: any = [];
  selectedVehicle: string;
  defaultVehicle: any = {};
  constructor(private api: ApiService, public activeRoute: ActivatedRoute, private ntrl: NavController) {
    this.api.startLoader();

    const startTime = new Date();
    const endTime = new Date();

    this.id = localStorage.getItem('defaultParking');
    this.api.authGetReq(`space/${this.id}/live`).subscribe((res: any) => {
      this.api.dismissLoader();

      this.zoneData = res.data;
      if (this.zoneData.length > 0) {
        this.segment = this.zoneData[0].id;
      }
    }, err => {
      this.api.dismissLoader();

      console.error('err', err);

    });
  }

  ngOnInit() {
  }
}
