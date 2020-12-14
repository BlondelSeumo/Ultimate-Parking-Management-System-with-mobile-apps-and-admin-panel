import { Component } from '@angular/core';

import { Platform, NavController } from '@ionic/angular';
import { SplashScreen } from '@ionic-native/splash-screen/ngx';
import { StatusBar } from '@ionic-native/status-bar/ngx';
import { OneSignal } from '@ionic-native/onesignal/ngx';
import { ApiService } from './service/api.service';
@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss']
})
export class AppComponent {
  constructor(
    private platform: Platform,
    private splashScreen: SplashScreen,
    private statusBar: StatusBar,
    private oneSignal: OneSignal,
    private ntrl: NavController,
    private api: ApiService
  ) {
    if (!localStorage.getItem('token')) {
      localStorage.clear();
      this.ntrl.navigateRoot('login');
    }
    this.initializeApp();
  }

  initializeApp() {
    this.platform.ready().then(() => {
      this.statusBar.backgroundColorByHexString('#3496ff');
      this.splashScreen.hide();

      this.api.getWithAuth('setting').subscribe((res: any) => {
        console.log('res', res);
        this.api.APIGlobeSetting = res.data;

        this.onesignalInit(res.data.APP_ID, res.data.PROJECT_NUMBER);
      }, err => {
        console.error('err', err);

      });

    });

  }

  private onesignalInit(onseSignalAppId, googleProjectId) {

    if (this.platform.is('cordova')) {
      if (this.platform.is('android')) {
        this.oneSignal.startInit(onseSignalAppId, googleProjectId);
      } else if (this.platform.is('ios')) {
        this.oneSignal.startInit(onseSignalAppId);
      }
      this.oneSignal.inFocusDisplaying(this.oneSignal.OSInFocusDisplayOption.Notification);
      this.oneSignal.handleNotificationReceived().subscribe(() => {
        // do something when notification is received
      });
      this.oneSignal.handleNotificationOpened().subscribe(result => {
        // do something when a notification is opened
      });
      this.oneSignal.endInit();
      // AND THIS METHOD RETURN YOUR DEVICES USER_ID
      // setTimeout(() => {
      this.oneSignal.getIds().then(identity => {
        console.log('identity', identity);
        localStorage.setItem('pushToken', identity.userId);
      });
      // }, 5000);
    }
  }
}
