import { Component, OnInit } from '@angular/core';
import { AlertController, ModalController, NavController } from '@ionic/angular';
import { DeleteModalPage } from '../delete-modal/delete-modal.page';
import { ApiService } from 'src/app/service/api.service';

@Component({
  selector: 'app-guard-list',
  templateUrl: './guard-list.page.html',
  styleUrls: ['./guard-list.page.scss'],
})
export class GuardListPage implements OnInit {
  selectedLocation = "Chris Sullivan Parking";
  data: any = [];

  constructor(
    private ntrl: NavController,
    private api: ApiService
  ) {

  }
  ngOnInit() {

  }
  ionViewDidEnter() {
    this.api.startLoader();
    this.api.authGetReq('guard').subscribe((res: any) => {
      this.data = res.data;
      this.api.dismissLoader();
    }, err => {
      this.api.dismissLoader();
      console.error('err', err);
    });
  }
  addNewGuard() {
    this.ntrl.navigateForward('park-guard');
  }
}
