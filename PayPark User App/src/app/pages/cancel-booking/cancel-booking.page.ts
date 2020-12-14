import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-cancel-booking',
  templateUrl: './cancel-booking.page.html',
  styleUrls: ['./cancel-booking.page.scss'],
})
export class CancelBookingPage implements OnInit {
  cancleDate:any = [
    'Cancellation my parking due to bad weather.',
    'I moved office locations.',
    'I have to go other sides.',
    'I cancel my plan.',
    'Other',
  ]
  constructor(private ntrl:NavController) { }

  ngOnInit() {
  }
back(){
    this.ntrl.back();
}
}
