import { Component, OnInit } from '@angular/core';
import { AlertController, NavController } from '@ionic/angular';
import { ApiService } from './../../service/api.service';

@Component({
  selector: 'app-transaction',
  templateUrl: './transaction.page.html',
  styleUrls: ['./transaction.page.scss']
})
export class TransactionPage implements OnInit {
  constructor(private ntrl: NavController, private api: ApiService) {}
  sort_data: any = {
    start_date: new Date().toISOString(),
    end_date: new Date().toISOString()
  };
  search = '';
  type = 'day';
  transactionData:any = {};
  ngOnInit() {
    this.apiChangeReq();
  }
  changeFil(type) {
    this.type = type;
    this.apiChangeReq();
  }


  apiChangeReq() {
    this.api.startLoader();
    const id = localStorage.getItem('defaultParking');

    this.api.authGetReq(`transaction/${id}/${this.type}`).subscribe(
      (res: any) => {
        console.log('res', res);
        this.transactionData = res.data;
        this.api.dismissLoader();
      },
      err => {
        this.api.dismissLoader();
        console.error('err', err);
      }
    );
  }
  searchMe() {
    const id = localStorage.getItem('defaultParking');
    this.api.startLoader();

    console.log('this.sort_data: ', this.sort_data);
    if (this.sort_data.start_date && this.sort_data.end_date) {
      this.api
        .authPostReq(`transaction/${id}/custom`, this.sort_data)
        .subscribe(
          (res: any) => {
            this.api.dismissLoader();

            this.transactionData = res.data;
          },
          err => {
            console.error('err', err);
            this.api.dismissLoader();
          }
        );
    } else {
      this.api.presentToast('Please Select Data');
    }
  }
}
