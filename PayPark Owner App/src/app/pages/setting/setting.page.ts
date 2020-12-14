import { Component, OnInit } from '@angular/core';
import { ApiService } from './../../service/api.service';

@Component({
  selector: 'app-setting',
  templateUrl: './setting.page.html',
  styleUrls: ['./setting.page.scss']
})
export class SettingPage implements OnInit {
  profileData: any = {};
  error: any = {};
  constructor(private api: ApiService) {
    this.profileInitData();
  }

  private profileInitData() {
    this.api.startLoader();
    this.api.authGetReq('profile').subscribe(
      res => {
        this.profileData = res;
        this.api.dismissLoader();
      },
      err => {
        this.api.dismissLoader();
        console.error('err', err);
      }
    );
  }
  ngOnInit() {}
  update() {
    this.api.startLoader();
    this.api
      .authPostReq('profile/setting', {
        stripe_sk: this.profileData.stripe_sk,
        stripe_pk: this.profileData.stripe_pk
      })
      .subscribe(
        (res: any) => {
          this.api.dismissLoader();

          if (res.success === true) {
            this.api.presentToast(res.msg);
          }
          this.error = {};
        },
        err => {
          this.api.dismissLoader();

          if (err.status === 422) {
            this.error = err.error.errors;
            console.log('err', this.error);
            this.api.presentToast(err.error.message);
          }
        }
      );
  }
}
