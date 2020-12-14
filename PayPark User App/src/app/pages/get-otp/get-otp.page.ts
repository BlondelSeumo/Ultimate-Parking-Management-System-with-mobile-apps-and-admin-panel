import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';
import { ApiService } from './../../service/api.service';
import { countryCode } from './../../service/country'
@Component({
  selector: 'app-get-otp',
  templateUrl: './get-otp.page.html',
  styleUrls: ['./get-otp.page.scss'],
})
export class GetOtpPage implements OnInit {

  phoneno = "";
  country = "+91";
  countryObj: any = {};
  constructor(private ntrl: NavController, private api: ApiService) {
    if (!localStorage.getItem('email')) {
      // this.ntrl.navigateForward(['login']);

    }
    // setTimeout(() => {

    this.country = this.api.APIGlobeSetting.country_code;
    this.findCountryCode();

    // }, 10000);
  }

  ngOnInit() {
  }
  verification() {
    this.api.startLoader();

    const data = {
      email: localStorage.getItem('email'),
      phone_no: this.country + this.phoneno
    }
    console.log('data', data)
    this.api.postWithAuth('reqForOTP', data).subscribe((res: any) => {
      console.log('res', res)
      this.api.dismissLoader();

      if (res.success === true) {
        this.api.presentToast(res.msg)
        localStorage.setItem('phoneNo', this.phoneno)
        // this.ntrl.navigateForward(['get-otp']);
        this.ntrl.navigateForward(['verify']);
      } else {
        this.api.presentToast(res.msg)
        this.ntrl.navigateForward([res.redirect]);

      }
    }, err => {
      this.api.dismissLoader();

      console.log('err', err)

    })
    // this.ntrl.navigateForward(['verify']);
  }
  findCountryCode() {
    let obj = countryCode.find(o => o.dial_code === this.country);
    this.countryObj = obj;
    console.log(obj);
  }
}
