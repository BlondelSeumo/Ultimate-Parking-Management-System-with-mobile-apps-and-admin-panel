import { Component, OnInit, HostListener } from "@angular/core";
import { ApiService } from "src/app/service/api.service";
import { ActivatedRoute } from "@angular/router";
import { NavController } from "@ionic/angular";
import { LocalNotifications } from '@ionic-native/local-notifications/ngx';
declare var StripeCheckout;

@Component({
  selector: "app-park-time",
  templateUrl: "./park-time.page.html",
  styleUrls: ["./park-time.page.scss"]
})
export class ParkTimePage implements OnInit {
  @HostListener("window:popstate")
  id: any;
  startTime: any;
  endTime: any;
  spaceData: any = {};
  vehicle: Array<any> = [];
  defaultVehicle: any = {};
  selectedVehicle: any;
  hours: number;
  handler: any;
  paymentMode = "";
  constructor(
    private api: ApiService,
    public activeRoute: ActivatedRoute,
    private ntrl: NavController,
    private localNotifications: LocalNotifications
  ) {
    this.api.startLoader();
  }
  ionViewDidLoad() {
    setTimeout(() => { }, 1000);
  }
  ngOnInit() {
    this.id = this.activeRoute.snapshot.paramMap.get("id");
    this.startTime = this.api.startTime || new Date();
    // const temp = new Date().toString().substring(0, 10);
    // console.log('temp', temp)
    // setTimeout(() => {

    this.endTime = this.api.endTime || new Date();
    // }, 10000);
    this.hours = Math.abs(this.startTime - this.endTime) / 36e5;
    console.log(" this.hours", this.hours);
    this.hours = Math.round(this.hours);
    const latLng = {
      lat: 22.3039,
      lng: 70.8022
    };
    this.api.postWithAuth(`space/${this.id}`, latLng).subscribe(
      (res: any) => {
        console.log("res", res);
        this.spaceData = res.data;
      },
      err => {
        console.error("err", err);
      }
    );

    this.api.authGetReq(`vehicle`).subscribe(
      (res: any) => {
        console.log("res", res);
        this.vehicle = res.data;
        this.getDefaultVehicle();
        this.api.dismissLoader();

        // this.spaceData = res;
      },
      err => {
        console.error("err", err);
        this.api.dismissLoader();
      }
    );
    setTimeout(() => {
      this.api
        .getWithAuth(`setting/${this.spaceData.owner_id}/stripe`)
        .subscribe(
          (res: any) => {
            console.log("res", res);
            this.handler = StripeCheckout.configure({
              key: res.data.stripe_pk,
              image:
                "https://stripe.com/img/documentation/checkout/marketplace.png", // Picture you want to show in pop up
              locale: "auto",
              token: (token: any) => {
                console.log("JSON.stringify(token)", token);
                this.bookMySpace(token.id);
              }
            });
          },
          err => {
            console.error("err", err);
          }
        );
    }, 2000);
  }
  getDefaultVehicle() {
    this.vehicle.forEach(ele => {
      if (ele.default_vehicle === 1) {
        this.defaultVehicle = ele;
        console.log("this.defaultVehicle", this.defaultVehicle);
        this.selectedVehicle = ele.id;
        console.log("this.selectedVehicle", this.selectedVehicle);
      }
    });
  }
  getDefaultVehicleById() {
    this.vehicle.forEach(ele => {
      if (ele.id === this.selectedVehicle) {
        this.defaultVehicle = ele;
        console.log("this.defaultVehicle", this.defaultVehicle);
        // this.selectedVehicle = ele.id
        console.log("this.selectedVehicle", this.selectedVehicle);
      }
    });
  }
  bookParking() {
    if (!this.selectedVehicle || !this.paymentMode) {
      this.api.presentToast("Please select vehicle and payment method");
      return;
    }
    if (this.paymentMode === "stripe") {
      this.handlerOpen();
      return;
    }
    this.bookMySpace();
  }
  handlerOpen() {
    this.handler.open({
      name: this.spaceData.title, // Pass your application name
      amount: this.hours * this.spaceData.price_par_hour * 100 // Pass your billing amount
    });
  }
  onPopstate() {
    this.handler.close(); // To close the pop-up
  }
  bookMySpace(token = "NO TOKEN") {
    this.api.startLoader();

    const data: any = {
      owner_id: this.spaceData.owner_id,
      space_id: this.spaceData.id,
      vehicle_id: this.selectedVehicle,
      arriving_time: this.startTime,
      leaving_time: this.endTime,
      total_amount: this.hours * this.spaceData.price_par_hour,
      slot_id: this.api.myParkingSlot,
      payment_type: this.paymentMode,
      payment_token: token
    };
    this.api.authPostReq("booking", data).subscribe(
      (res: any) => {
        console.log("res", res);
        this.api.dismissLoader();
        if (res.success === true) {
          this.api.presentToast(res.msg);

          const fDate = new Date(res.data.arriving_time);
          const min = localStorage.getItem('reminder') || '60';
          fDate.setMinutes(fDate.getMinutes() + parseInt(min))
          this.localNotifications.schedule({
            id: res.data.order_no,
            title: res.data.header,
            text: res.data.text,
            trigger: { at: fDate },
          });

          this.ntrl.navigateRoot("ticket/" + res.data.id);
        }
      },
      err => {
        console.error("err", err);
        this.api.dismissLoader();
      }
    );
  }
}
