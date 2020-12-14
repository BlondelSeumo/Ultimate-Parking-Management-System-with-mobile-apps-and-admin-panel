import { Component, OnInit } from '@angular/core';
import { AlertController, PopoverController } from '@ionic/angular';
import { ApiService } from 'src/app/service/api.service';

@Component({
  selector: 'app-review',
  templateUrl: './review.page.html',
  styleUrls: ['./review.page.scss'],
})
export class ReviewPage implements OnInit {
  reviewData = [];
  search = ''
  constructor(private api: ApiService) { }

  ngOnInit() {
    this.api.startLoader();

    const id = localStorage.getItem('defaultParking');
    const type = localStorage.getItem('userType') || 'owner';
    if (type === 'owner') {
      this.api.authGetReq('review').subscribe((res: any) => {
        this.reviewData = res.data;
        this.api.dismissLoader();

      }, err => {
        this.api.dismissLoader();

        console.error('err', err);

      });
    } else {
      this.api.authGetReq('review/' + id).subscribe((res: any) => {

        this.reviewData = res.data;
        this.api.dismissLoader();
        console.log('err', res);
      }, err => {
        console.error('err', err);
        this.api.dismissLoader();

      });
    }

  }

}
