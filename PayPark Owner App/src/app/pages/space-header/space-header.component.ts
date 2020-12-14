import { Component, OnInit } from '@angular/core';
import { NavController, AlertController, MenuController } from '@ionic/angular';
import { ApiService } from './../../service/api.service';

@Component({
  selector: 'app-space-header',
  templateUrl: './space-header.component.html',
  styleUrls: ['./space-header.component.scss'],
})
export class SpaceHeaderComponent implements OnInit {
  defaultParking: string;
  defaultParkingData: any = {};
  mySpace: Array<any> = [];
  spaceData = [];
  constructor(
    private ntrl: NavController,
    private alertController: AlertController,
    private menu: MenuController,
    private api: ApiService) {
    this.defaultParking = localStorage.getItem('defaultParking');

  }

  ngOnInit() {

    this.api.authGetReq('space').subscribe((res: any) => {

      this.spaceData = res.data;
      res.data.forEach(ele => {

        if (ele.id == this.defaultParking) {

          this.defaultParkingData = ele;

        }
        this.mySpace.push({
          name: ele.title,
          type: 'radio',
          label: ele.title,
          address: ele.address,
          value: ele.id,
          checked: ele.id == this.defaultParking ? true : false
        });
      });
    }, err => {
      console.error('err', err);
    });
  }
  async presentAlertRadio() {
    const alert = await this.alertController.create({
      header: 'Your Parking Space',
      inputs: this.mySpace,
      buttons: [
        {
          text: 'Cancel',
          role: 'cancel',
          cssClass: 'secondary',
          handler: () => {

          }
        }, {
          text: 'Ok',
          handler: (data) => {

            this.mackMeDefault(data);

          }
        }
      ]
    });

    await alert.present();
  }
  mackMeDefault(data) {
    this.defaultParking = data;
    this.spaceData.forEach(ele => {

      if (ele.id == this.defaultParking) {

        this.defaultParkingData = ele;

      }
    });
    localStorage.setItem('defaultParking', data);
    location.reload();
  }
}
