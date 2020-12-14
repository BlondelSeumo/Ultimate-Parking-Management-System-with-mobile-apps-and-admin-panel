import { Component, OnInit } from '@angular/core';
import { DeleteModalPage } from '../delete-modal/delete-modal.page';
import { ModalController, NavController } from '@ionic/angular';
import { ApiService } from './../../service/api.service';

@Component({
  selector: 'app-car-list',
  templateUrl: './car-list.page.html',
  styleUrls: ['./car-list.page.scss'],
})
export class CarListPage implements OnInit {
  radio: any = 0;
  type: any = 'vehicle';

  carData: any = []
  constructor(private modalController: ModalController, private ntrl: NavController, private api: ApiService) {

  }

  ngOnInit() {
  }
  ionViewWillEnter() {
    this.getUserVehicle();

  }
  getUserVehicle() {
    this.api.startLoader()

    this.api.authGetReq('vehicle').subscribe((res: any) => {
      console.log('res', res)

      this.carData = res.data;
      this.api.dismissLoader()
    }, err => {
      this.api.dismissLoader()

      console.error('err', err)
    })
  }
  async presentModal(id, sliding) {
    const modal = await this.modalController.create({
      component: DeleteModalPage,
      cssClass: 'mymodal',
      showBackdrop: false,
      componentProps: {
        id,
        path: 'vehicle'
      }
    });
    modal.onDidDismiss().then(data => {
      sliding.close()
      console.log('dismissed', data);
      if (data.data && data.data.deleted === true) {
        this.getUserVehicle();

      }
    });

    return await modal.present();

  }
  back() {
    this.ntrl.back();
  }
  view() {
    console.log("jjj");
  }
  defaultCarChange(id) {
    const data = {
      default_vehicle: 1
    }
    this.api.startLoader()

    this.api.authUpdateReq('vehicle/' + id, data).subscribe((res: any) => {
      console.log('res', res)
      this.api.dismissLoader()
      if (res.success === true) {
        this.api.presentToast(res.msg)
      }
    }, err => {
      console.error('err', err)
      this.api.dismissLoader()
    })
    console.log('id', id)

  }
  addCar() {
    this.ntrl.navigateForward('select-car')
  }
}
