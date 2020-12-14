import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';
import { ApiService } from './../../service/api.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss'],
})
export class LoginPage implements OnInit {
  email: string;
  password: string;
  error: any = {};

  constructor(private ntrl: NavController, private api: ApiService) { }

  ngOnInit() {

  }
  forgotPassword() {
    this.ntrl.navigateForward(['forgot']);
  }
  getOtp() {
    this.ntrl.navigateForward(['get-otp']);
  }
  signup() {
    this.ntrl.navigateForward(['signup']);
  }
  async login() {
    this.api.startLoader();
    const data = new FormData();
    data.append('email', this.email);

    data.append('password', this.password);
    data.append('device_token', localStorage.getItem('pushToken'));
    this.api.postWithAuth('login', data).subscribe((res: any) => {
      console.log('res', res);
      this.api.dismissLoader();

      if (res.success === true) {
        this.api.presentToast(res.msg);
        localStorage.setItem('token', res.data.token);
        this.ntrl.navigateForward(['tabs/home']);

      } else {
        this.api.presentToast(res.msg);
        localStorage.setItem('email', this.email);

        this.ntrl.navigateForward(['get-otp']);

      }
    }, err => {
      this.api.dismissLoader();
      if (err.status === 401) {
        console.log('err', err.statusText);
        this.api.presentToast(err.statusText);
      }
      if (err.status === 422) {
        this.error = err.error.errors;
        console.log('err', this.error);
        this.api.presentToast(err.error.message);
      }
    });
  }
}
