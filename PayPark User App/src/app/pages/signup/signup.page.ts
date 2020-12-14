import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';
import { ApiService } from './../../service/api.service';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.page.html',
  styleUrls: ['./signup.page.scss'],
})
export class SignupPage implements OnInit {
  modelData: any = {}
  error: any = {};
  constructor(private ntrl: NavController, private api: ApiService) { }
  ngOnInit() {
  }
  login() {
    this.ntrl.navigateForward(['login']);
  }
  async register() {
    this.api.startLoader();

    // const data = new FormData();
    // data.append('email', this.email)
    // console.log('this.email', this.email)
    // data.append('password', this.password)

    this.modelData.device_token = localStorage.getItem('pushToken');
    this.api.postWithAuth('store', this.modelData).subscribe((res: any) => {
      console.log('res', res)
      this.api.dismissLoader();

      if (res.success === true) {
        this.api.presentToast(res.msg)

        if (res.nextStep === 'home') {
          localStorage.setItem('token', res.data.token)
          this.ntrl.navigateForward(['tabs/home']);
        } else {

          localStorage.setItem('email', this.modelData.email)
          this.ntrl.navigateForward(['get-otp']);
        }

      }

    }, err => {
      this.api.dismissLoader();

      console.log('err', err)
      if (err.status === 422) {
        this.error = err.error.errors;
        console.log('err', this.error)
        this.api.presentToast(err.error.message)
      }

    })
  }
}
