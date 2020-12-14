import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-notification',
  templateUrl: './notification.page.html',
  styleUrls: ['./notification.page.scss'],
})
export class NotificationPage implements OnInit {

  constructor(private ntrl:NavController) { }
  data:any=[
    'jonathan Chavez Parking is full',
    'Michelle Vargas parking is available 26 Slots',
    'Hary up Patrick Fox parking is only 3 slots available'
  ]
  ngOnInit() {
  }
  back(){
    this.ntrl.back();
  }
}
