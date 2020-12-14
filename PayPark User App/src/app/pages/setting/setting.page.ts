import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-setting',
  templateUrl: './setting.page.html',
  styleUrls: ['./setting.page.scss'],
})
export class SettingPage implements OnInit {
  data: any = {
    setting: [
      {
        name: 'Phone Number',
        value: '+44 9033976754'
      },
      {
        name: 'Notification'
      },
      {
        name: 'location',
        toggle: 'yes'
      },
      {
        name: 'Car/Card Saved List'
      },
      {
        name: 'Privacy Policy'
      },
      {
        name: 'Sign out'
      }
    ]
  }
  constructor(private ntrl: NavController) { }

  ngOnInit() {
  }
  back() {
    this.ntrl.back();
  }
  notification() {
    this.ntrl.navigateForward(['notification']);
  }
  carList() {
    this.ntrl.navigateForward(['car-list']);
  }
  privacyPolicy() {
    this.ntrl.navigateForward(['policy']);
  }
  signOut() {
    localStorage.clear();
    this.ntrl.navigateForward(['login']);
  }
}
