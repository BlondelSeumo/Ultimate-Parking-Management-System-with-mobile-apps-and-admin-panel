import { Component, OnInit } from '@angular/core';
import { AlertController, NavController } from '@ionic/angular';
import { ApiService } from './../../service/api.service';
import { CameraOptions, Camera } from '@ionic-native/camera/ngx';

@Component({
  selector: 'app-owner-detail',
  templateUrl: './owner-detail.page.html',
  styleUrls: ['./owner-detail.page.scss']
})
export class OwnerDetailPage implements OnInit {
  profileData: any = {};
  password: any = {};
  error: any = {};
  constructor(private api: ApiService, private camera: Camera) {
    this.profileInitData();
  }

  private profileInitData() {
    this.api.startLoader();
    this.api.authGetReq('profile').subscribe(
      res => {
        // console.log('err', res)
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

  updateProfile() {
    this.api.startLoader();
    this.api.authPostReq('profile/update', this.profileData).subscribe(
      (res: any) => {
        this.api.dismissLoader();

        if (res.success === true) {
          this.api.presentToast(res.msg);
          //    this.isProfileUpdate = !this.isProfileUpdate;
        }
        this.error = {};
      },
      err => {
        this.api.dismissLoader();

        console.log('err', err);
        if (err.status === 422) {
          this.error = err.error.errors;
          this.api.presentToast(err.error.message);
        }
      }
    );
  }
  tackPhotoFromCamera() {
    const options: CameraOptions = {
      quality: 100,
      destinationType: this.camera.DestinationType.DATA_URL,
      encodingType: this.camera.EncodingType.PNG,
      mediaType: this.camera.MediaType.PICTURE
    };
    this.camera.getPicture(options).then(
      imageData => {
        // imageData is either a base64 encoded string or a file URI
        // If it's base64 (DATA_URL):
        const base64Image = 'data:image/png;base64,' + imageData;
        const data = {
          image: base64Image
        };
        this.api.startLoader();
        this.api.authPostReq('profile/picture/update', data).subscribe(
          (res: any) => {
            this.api.dismissLoader();

            if (res.success === true) {
              this.api.presentToast(res.msg);
              this.profileInitData();
            }
          },
          err => {
            console.log('err', err);
          }
        );
      },
      err => {
        // Handle error
      }
    );
  }
  updatePassword() {
    this.api.startLoader();
    this.api.authPostReq('profile/update/password', this.password).subscribe(
      (res: any) => {
        this.api.dismissLoader();

        if (res.success === true) {
          this.api.presentToast(res.msg);
          this.password = {};
          //    this.isProfileUpdate = !this.isProfileUpdate;
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
