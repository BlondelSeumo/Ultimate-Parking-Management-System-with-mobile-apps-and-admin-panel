import { Component, OnInit } from '@angular/core';
import { ApiService } from './../../service/api.service';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-home-map',
  templateUrl: './home-map.page.html',
  styleUrls: ['./home-map.page.scss'],
})
export class HomeMapPage implements OnInit {
  spaceData: any = [];

  constructor(private api: ApiService, private ntrl: NavController) {
    this.api.startLoader();

    this.api.authGetReq('space').subscribe((res: any) => {
      this.api.dismissLoader();
      this.spaceData = res.data;

    }, err => {
      this.api.dismissLoader();
      console.error('err', err);

    });
  }

  ngOnInit() {
  }
  viewMyParking(id) {
    localStorage.setItem('defaultParking', id);
    location.reload();
    this.ntrl.navigateRoot('home');
  }
  backToHome() {
    this.ntrl.navigateRoot('home');

  }
  addSpace() {
    this.ntrl.navigateRoot('park-address');

  }
}
