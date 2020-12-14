import { Component, OnInit } from '@angular/core';
import { AlertController, NavController } from '@ionic/angular';
import { ApiService } from './../../service/api.service';

@Component({
  selector: 'app-park-guard',
  templateUrl: './park-guard.page.html',
  styleUrls: ['./park-guard.page.scss'],
})
export class ParkGuardPage implements OnInit {
  selectedLocation = 'Chris Sullivan Parking'
  error: any = {};
  constructor(private alertController: AlertController, private ntrl: NavController, private api: ApiService) { }

  data: any = {

  };
  ngOnInit() {
  }
  async presentAlertRadio() {
    const alert = await this.alertController.create({
      header: 'Set location',
      inputs: [
        {
          name: 'Kirakwall',
          type: 'radio',
          label: 'Kirakwall',
          value: 'Kirakwall',
          checked: true
        },
        {
          name: 'Kirakwall2',
          type: 'radio',
          label: 'Kirakwall2',
          value: 'Kirakwall2'
        },
        {
          name: 'Kirakwall3',
          type: 'radio',
          label: 'Kirakwall3',
          value: 'Kirakwall3'
        }
      ],
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
            this.selectedLocation = data;
          }
        }
      ]
    });

    await alert.present();
  }

  gaurdList() {
    this.api.startLoader();

    this.api.authPostReq('guard', this.data).subscribe((res: any) => {
      this.api.dismissLoader();

      if (res.success === true) {
        this.api.presentToast(res.msg);
        this.ntrl.back();

      }

    }, err => {
      this.api.dismissLoader();

      console.error(err);
      if (err.status === 422) {
        this.error = err.error.errors;
        this.api.presentToast(err.error.message);
      }
    })
  }
};;
