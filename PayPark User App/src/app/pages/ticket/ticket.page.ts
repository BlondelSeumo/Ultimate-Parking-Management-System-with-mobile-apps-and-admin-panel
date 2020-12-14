import { Component, OnInit } from '@angular/core';
import { ApiService } from 'src/app/service/api.service';
import { ActivatedRoute } from '@angular/router';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-ticket',
  templateUrl: './ticket.page.html',
  styleUrls: ['./ticket.page.scss'],
})
export class TicketPage implements OnInit {
  data: any = {
    ticket: {
      status: 'Payment Successful',
      id: '1354 9874',
      startTime: '10:00',
      endTime: '01:00',
      price: '30',
      barcodeImg: 'assets/image/barcode.png',
      name: 'Chris Sullivan Parking',
      adress: '190 High St East, Rawa Barat,UK'
    }
  }
  id: string;
  bookingData: any = {}
  constructor(private api: ApiService, public activeRoute: ActivatedRoute, private ntrl: NavController
  ) {
  }

  ngOnInit() {
    this.api.startLoader();

    this.id = this.activeRoute.snapshot.paramMap.get('id');
    console.log('this.id', this.id)
    this.api.authGetReq('booking/' + this.id).subscribe((res: any) => {
      console.log('res', res)
      this.bookingData = res.data;
      this.api.dismissLoader()

    }, err => {
      console.error('err', err)
      this.api.dismissLoader()

    })
  }
  rateNow() {
    this.ntrl.navigateForward('review/' + this.bookingData.space_id)
  }
  navBooking() {
    this.ntrl.navigateRoot('/tabs/mybooking')

  }

}
