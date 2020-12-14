import { Component, OnInit } from '@angular/core';
import { ApiService } from './../../service/api.service';

declare var Stripe;
const stripe = Stripe('pk_test_RtEQk9EkwFt6UcO0QTbHE93O00NFTY0n7T');
const elements = stripe.elements();
@Component({
  selector: 'app-plan-detail',
  templateUrl: './plan-detail.page.html',
  styleUrls: ['./plan-detail.page.scss'],
})
export class PlanDetailPage implements OnInit {
  data: any = [];
  cards: any = [];
  customer: any = {};
  profileData: any = {};
  newCard: any;
  newCardToggle = true;
  addNewCard = false;
  cardData: any = {
    number: '',
    expMonth: 12,
    expYear: 2020,
    cvc: '220'
  };
  lastSubscription: any = {};
  constructor(private api: ApiService) {
  }

  ngOnInit() {
    this.dataInit();
    this.addCard();

  }
  dataInit() {
    this.api.startLoader();

    this.api.authGetReq('profile').subscribe(res => {

      this.profileData = res;
      this.api.dismissLoader();

    }, err => {
      this.api.dismissLoader();
      console.error('err', err);
    });
    this.api.authGetReq('plan').subscribe((res: any) => {

      this.data = res.data.plan;
      this.cards = res.data.card;
      this.customer = res.data.customer_data;
      this.lastSubscription = res.data.subscription_data;
    }, err => {
      console.error('err', err);

    });
  }
  ionViewDidLeave() {
    this.newCard.destroy();
  }
  defaultCarChange(id) {
    const data = {
      id
    };
    this.api.startLoader();

    this.api.authUpdateReq('card/change', data).subscribe((res: any) => {
      this.api.dismissLoader();

      if (res.success === true) {
        this.api.presentToast(res.msg);
        this.dataInit();

      }
    }, err => {
      this.api.dismissLoader();

      console.error('err', err);

    });
  }
  deleteCard(id) {
    this.api.startLoader();

    this.api.authDeleteReq('card/' + id).subscribe((res: any) => {
      this.api.dismissLoader();

      if (res.success === true) {
        this.api.presentToast(res.msg);
        this.dataInit();

      }
    }, err => {
      this.api.dismissLoader();

      console.error('err', err);

    });

  }
  cardToggle() {
    this.newCardToggle = true;
    this.addCard();

  }
  buySubscription(id) {
    this.api.startLoader();

    this.api.authGetReq(`subscription/${id}/buy`).subscribe((res: any) => {
      this.api.dismissLoader();

      if (res.success === true) {
        this.api.presentToast(res.msg);
        this.dataInit();

      }

    }, err => {
      this.api.dismissLoader();

      console.error('err', err);

    });

  }
  addCard() {

    if (!this.addNewCard) {
      setTimeout(() => this.setupStripe(), 0);
    } else {
    }

    this.addNewCard = !this.addNewCard;
  }
  setupStripe() {

    const style = {
      base: {
        color: '#32325d',
        lineHeight: '24px',
        fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
        fontSmoothing: 'antialiased',
        fontSize: '16px',
        '::placeholder': {
          color: '#aab7c4'
        }
      },
      invalid: {
        color: '#fa755a',
        iconColor: '#fa755a'
      }
    };

    this.newCard = elements.create('card', { style });
    this.newCard.mount('#card-element');
  }
  stripeAddCars() {
    stripe.createSource(this.newCard).then(result => {

      if (result.error) {
        this.api.presentToast(result.error.message);
      }
      if (result.source) {
        this.api.startLoader();

        this.api.authPostReq('card/new', { id: result.source.id }).subscribe((res: any) => {
          this.api.dismissLoader();

          if (res.success === true) {
            this.api.presentToast(res.msg);
            this.dataInit();
            this.newCard.clear();

          }
        }, err => {

          console.error('err', err);
          this.newCard.clear();
          this.api.dismissLoader();
        });
      }

    });
  }
}
