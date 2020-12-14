import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';
import { ApiService } from './../../service/api.service';

@Component({
  selector: 'app-policy',
  templateUrl: './policy.page.html',
  styleUrls: ['./policy.page.scss'],
})
export class PolicyPage implements OnInit {
  data: any = {}

  constructor(private ntrl: NavController, private api: ApiService) { }

  ngOnInit() {
    this.api.getWithAuth('pp').subscribe((res: any) => {
      console.log('res', res)
      this.data = res.data;

    }, err => {
      console.error('err', err)

    });
  }
  backPage() {
    this.ntrl.back();
  }
}
