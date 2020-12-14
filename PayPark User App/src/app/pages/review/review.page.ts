import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ApiService } from 'src/app/service/api.service';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-review',
  templateUrl: './review.page.html',
  styleUrls: ['./review.page.scss'],
})
export class ReviewPage implements OnInit {
  rate = 0;
  id: string;
  msg: any;
  constructor(private api: ApiService, public activeRoute: ActivatedRoute, private ntrl: NavController) {

  }

  ngOnInit() {
    this.id = this.activeRoute.snapshot.paramMap.get('id');
    console.log('this.id', this.id);

  }
  addReview() {
    this.api.startLoader();
    console.log('rate', this.rate);
    const data = {
      space_id: this.id,
      star: this.rate,
      description: this.msg,
    };
    this.api.authPostReq('review', data).subscribe((res: any) => {
      console.log('res', res)
      if (res.success === true) {
        this.api.presentToast(res.msg)
        this.api.dismissLoader();
        this.ntrl.back();
      }
    }, err => {
      console.log('err', err)
      this.api.dismissLoader();

    });
  }

}
