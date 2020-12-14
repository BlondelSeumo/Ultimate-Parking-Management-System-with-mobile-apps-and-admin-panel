import { Component } from '@angular/core';
import { Title } from '@angular/platform-browser';
import { NavController } from '@ionic/angular';
import { ApiService } from './../service/api.service';

import { CameraOptions, Camera } from '@ionic-native/camera/ngx';

@Component({
  selector: 'app-tab3',
  templateUrl: 'tab3.page.html',
  styleUrls: ['tab3.page.scss']
})
export class Tab3Page {

  profileData: any = {};
  reminder = '';
  isProfileUpdate = false;
  error: any = {};
  constructor(private ntrl: NavController, private api: ApiService, private camera: Camera) {
    this.reminder = localStorage.getItem('reminder')
  }
  private profileInitData() {
    this.api.startLoader();
    this.api.authGetReq('profile').subscribe(res => {
      // console.log('err', res)
      this.profileData = res;
      this.api.dismissLoader();
    }, err => {
      console.error('err', err);
      this.api.dismissLoader();
    });
  }
  ionViewDidEnter() {
    this.profileInitData();

  }
  setting() {
    this.ntrl.navigateForward(['setting']);
  }
  updateProfileToggle() {
    this.isProfileUpdate = !this.isProfileUpdate;
    console.log('this.isProfileUpdate', this.isProfileUpdate);
  }
  updateProfile() {
    this.api.startLoader();
    console.log('profileData', this.profileData);
    console.log('this.isProfileUpdate', this.isProfileUpdate);
    this.api.authPostReq('profile/update', this.profileData).subscribe((res: any) => {
      this.api.dismissLoader();
      if (res.success === true) {
        this.api.presentToast(res.msg);
        this.isProfileUpdate = !this.isProfileUpdate;
      }
      this.error = {};
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
    this.api.presentToast('Please Come ASAP!!!');
    this.ntrl.navigateForward(['login']);
  }

  tackPhotoFromCamera() {
    const options: CameraOptions = {
      quality: 100,
      destinationType: this.camera.DestinationType.DATA_URL,
      encodingType: this.camera.EncodingType.PNG,
      mediaType: this.camera.MediaType.PICTURE
    };
    this.camera.getPicture(options).then((imageData) => {
      // imageData is either a base64 encoded string or a file URI
      // If it's base64 (DATA_URL):
      const base64Image = 'data:image/png;base64,' + imageData;
      const data = {
        image: base64Image
      };
      this.api.startLoader();
      this.api.authPostReq('profile/picture/update', data).subscribe((res: any) => {
        console.log('res', res);
        this.api.dismissLoader();

        if (res.success === true) {
          this.api.presentToast(res.msg);
          this.profileInitData();

        }
      }, err => {
        console.log('err', err);

      });
    }, (err) => {
      // Handle error
    });
  }
  reminderChange() {

    localStorage.setItem('reminder', this.reminder)
    this.api.presentToast('Reminder time is changed')
  }
}
