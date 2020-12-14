import { Component, OnInit } from '@angular/core';
import { NavController, MenuController } from '@ionic/angular';
import { ApiService } from './../../service/api.service';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.page.html',
  styleUrls: ['./signup.page.scss'],
})
export class SignupPage implements OnInit {

  modelData: any = {};

  error: any = {};

  constructor(private ntrl: NavController, private api: ApiService, private menu: MenuController, ) {
    this.menu.enable(false);

  }

  ngOnInit() {
  }
  login() {
    this.api.startLoader();
    this.api.postWithAuth('store', this.modelData).subscribe((res: any) => {
      this.api.dismissLoader();
      if (res.success === true) {
        this.api.presentToast(res.msg);
        localStorage.setItem('token', res.data.token);
        this.ntrl.navigateForward(['slide']);

      }

    }, err => {
      this.api.dismissLoader();

      console.log('err', err);
      if (err.status === 422) {
        this.error = err.error.errors;
        console.log('err', this.error);
        this.api.presentToast(err.error.message);
      }

    });
  }

}
