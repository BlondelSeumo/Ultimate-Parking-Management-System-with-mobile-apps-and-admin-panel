import { Component, OnInit } from '@angular/core';
import { ApiService } from './../../service/api.service';

@Component({
  selector: 'app-images',
  templateUrl: './images.page.html',
  styleUrls: ['./images.page.scss'],
})
export class ImagesPage implements OnInit {
  urls = [];
  imageNew = false;
  images: Array<any> = [];
  spaceId: any;
  imageData = [];
  constructor(private api: ApiService) {
    this.spaceId = localStorage.getItem('defaultParking');
  }

  ngOnInit() {
    this.initImage();
  }
  onSelectFile(event) {
    if (event.target.files && event.target.files[0]) {
      let filesAmount = event.target.files.length;
      for (let i = 0; i < filesAmount; i++) {
        let reader = new FileReader();

        reader.onload = (event: any) => {

          this.images.push(event.target.result);
          this.urls.push(event.target.result);
        };

        reader.readAsDataURL(event.target.files[i]);
      }
    }
  }

  initImage() {
    this.api.authGetReq(`images/${this.spaceId}/space`).subscribe((res: any) => {
      this.imageData = res.data;

    }, error => {
      console.error('error', error);

    });
  }
  uploadImages() {
    const data = {
      images: this.images,
      space_id: this.spaceId
    };
    this.images = [];
    this.urls = [];
    this.imageNew = false;
    this.api.authPostReq('images', data).subscribe((res: any) => {
      if (res.success === true) {
        this.api.presentToast(res.msg);
        this.initImage();

      }

    }, err => {
      console.error('err', err);

    });
  }
  deleteImage(id) {
    this.api.authDeleteReq('images/' + id).subscribe((res: any) => {

      if (res.success === true) {
        this.api.presentToast(res.msg);
        this.initImage();

      }

    }, err => {
      console.error('err', err);

    });
  }
}
