import { Component, OnInit } from '@angular/core';
import { NavController, MenuController } from '@ionic/angular';
import { ApiService } from './../../service/api.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss']
})
export class LoginPage implements OnInit {
  data: any = {};
  type = 'owner';
  error: any = {};
  constructor(
    private ntrl: NavController,
    private menu: MenuController,
    private api: ApiService
  ) {
    this.menu.enable(false);

  }

  ngOnInit() {
    const token = localStorage.getItem('token') ? localStorage.getItem('token') : '';
    if (token.length > 0) {
      this.ntrl.navigateForward(['home']);
    }
    const remember = localStorage.getItem('remember') ? localStorage.getItem('remember') : '';
    if(remember === 'true') {
      this.data.email = localStorage.getItem('email');
      this.data.password = localStorage.getItem('password');
      this.data.type = localStorage.getItem('userType');
      this.data.remember = true;
    }
  }
  forgotPassword() {
    this.ntrl.navigateForward(['forgot']);
  }
  gotoSlide() {
    this.api.startLoader();
    localStorage.setItem('userType', this.data.type);

    this.api.postWithAuth('login', this.data).subscribe(
      (res: any) => {
        this.api.dismissLoader();
        if (res.success === true) {
          localStorage.setItem('userType', this.data.type);
          localStorage.setItem('token', res.data.token);
          if (this.data.remember) {
            localStorage.setItem('remember', 'true');
            localStorage.setItem('email', this.data.email);
            localStorage.setItem('userType', this.data.type);
            localStorage.setItem('password', this.data.password);
          } else {
            localStorage.removeItem('email');
            localStorage.removeItem('password');
            localStorage.setItem('remember', 'false');
          }
          this.api.presentToast(res.msg);
          this.api.generateURL();
          window.location.reload();
        } else {
          this.api.presentToast(res.msg);
        }
      },
      err => {
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
      }
    );
  }

  signup() {
    this.ntrl.navigateForward(['signup']);
  }

}
