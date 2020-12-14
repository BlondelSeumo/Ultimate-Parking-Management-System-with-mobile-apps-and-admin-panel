import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';
import { ApiService } from 'src/app/service/api.service';
declare var SMSReceive: any;
@Component({
  selector: 'app-verify',
  templateUrl: './verify.page.html',
  styleUrls: ['./verify.page.scss'],
})
export class VerifyPage implements OnInit {
  opt: any = {

  };
  constructor(private ntrl: NavController, private api: ApiService) {
    if (!localStorage.getItem('email') || !localStorage.getItem('phoneNo')) {
      this.ntrl.navigateForward(['login']);

    }
  }

  ngOnInit() {
    try {
      this.start();

    } catch (error) {
      console.error('error', error)

    }
    // this.getOTPFromSMS('sad');
  }
  moveFocus(event, nextElement, previousElement) {
    console.log(event);
    if (event.keyCode == 8 && previousElement) {
      previousElement.setFocus();
    } else if (event.keyCode >= 48 && event.keyCode <= 57) {
      if (nextElement) {
        nextElement.setFocus();
      }
    } else {
      event.path[0].value = '';
    }
  }
  back() {
    this.ntrl.back();
  }
  GotoHome() {
    this.ntrl.navigateRoot(['tabs/home']);
  }
  verifyMe() {
    this.api.startLoader()
    const otp = this.opt.a + this.opt.b + this.opt.c + this.opt.d;
    console.log('otp', otp);
    console.log('opt', this.opt);
    const data = {
      email: localStorage.getItem('email'),
      phone_no: localStorage.getItem('phoneNo'),
      OTP: otp
    };

    this.api.postWithAuth('verifyMe', data).subscribe((res: any) => {
      this.api.dismissLoader()
      console.log('res', res);
      if (res.success === true) {
        this.api.presentToast(res.msg);
        // localStorage.setItem('phoneNo', this.phoneno)
        // this.ntrl.navigateForward(['get-otp']);
        //this.ntrl.navigateForward(['verify']);
        localStorage.setItem('token', res.data.token)
        this.stop()
        localStorage.removeItem('email')
        localStorage.removeItem('phoneNo')
        this.ntrl.navigateForward(['tabs/home']);
        console.log('done');

      } else {
        this.api.dismissLoader()

        this.api.presentToast(res.msg);
        if (res.redirect) {
          this.ntrl.navigateForward([res.redirect]);
        }

      }
    }, err => {
      this.api.dismissLoader()

      console.log('err', err);

    });
  }
  start() {
    SMSReceive.startWatch(
      () => {
        console.log('watch started');
        document.addEventListener('onSMSArrive', (e: any) => {
          console.log('onSMSArrive()');
          const IncomingSMS = e.data;
          this.getOTPFromSMS(IncomingSMS.body)
          // console.log(JSON.stringify(IncomingSMS));
        });
      },
      () => { console.log('watch start failed') }
    )
  }
  stop() {
    SMSReceive.stopWatch(
      () => { console.log('watch stopped') },
      () => { console.log('watch stop failed') }
    )
  }

  getOTPFromSMS(sms) {
    const str = sms;
    let num;
    num = str.match(/\d+/);
    // if (otp.length === 4) {
    try {
      const otp = num[0].split('');
      console.log(otp);
      this.opt = {
        a: otp[0],
        b: otp[1],
        c: otp[2],
        d: otp[3],
      };
      this.verifyMe();
    } catch (error) {
      console.error('error', error)

    }
    // }

  }
}
