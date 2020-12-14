import { Component, OnInit } from '@angular/core';
import { ApiService } from './../../service/api.service';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-select-car',
  templateUrl: './select-car.page.html',
  styleUrls: ['./select-car.page.scss'],
})
export class SelectCarPage implements OnInit {
  carData: any = {}
  error: any = {};
  vehicleType = []
  constructor(private ntrl: NavController, private api: ApiService) { }

  ngOnInit() {
    // this.getVehicleType();
  }
  saveData() {
    this.api.startLoader()
    this.api.authPostReq('vehicle', this.carData).subscribe((res: any) => {
      console.log('res', res)
      this.api.dismissLoader()

      if (res.success === true) {

        this.api.presentToast(res.msg)

        this.ntrl.navigateForward(['car-list']);

      }
    }, err => {

      this.api.dismissLoader()
      console.error('err', err)
      if (err.status === 422) {
        this.error = err.error.errors;
        console.log('err', this.error)
        this.api.presentToast(err.error.message)
      }
    })
  }

}
