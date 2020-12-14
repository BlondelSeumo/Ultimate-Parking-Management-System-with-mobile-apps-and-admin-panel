import { Component } from "@angular/core";
import { PopoverController, NavController } from "@ionic/angular";
import { PopoverPage } from "../pages/popover/popover.page";
import { ApiService } from "./../service/api.service";
@Component({
  selector: "app-tab2",
  templateUrl: "tab2.page.html",
  styleUrls: ["tab2.page.scss"]
})
export class Tab2Page {
  data: any = {
    current: [
      {
        name: "Chris Sullivan Parking",
        date: "25/10/2019",
        id: "1354 9874",
        sartTime: "10:00",
        endTime: "01:00",
        price: "30",
        msg: "Payment Successful",
        icon: "assets/icon-image/id-icon.svg",
        clock: "assets/icon-image/clock-img.svg"
      },
      {
        name: "Amanda Gibson Parking",
        date: "25/10/2019",
        id: "2565 9874",
        sartTime: "10:00",
        endTime: "01:00",
        price: "25",
        msg: "Payment Successful",
        icon: "assets/icon-image/id-icon.svg",
        clock: "assets/icon-image/clock-img.svg"
      }
    ],
    history: [
      {
        name: "Holmes Parking",
        date: "22/10/2019",
        id: "1354 9874",
        sartTime: "10:00",
        endTime: "01:00",
        price: "30",
        msg: "Payment Successful",
        icon: "assets/icon-image/id-icon.svg",
        clock: "assets/icon-image/clock-img.svg"
      },
      {
        name: "Jones Ethan Parking",
        date: "22/10/2019",
        id: "1354 9874",
        sartTime: "10:00",
        endTime: "01:00",
        price: "30",
        msg: "Payment Successful",
        icon: "assets/icon-image/id-icon.svg",
        clock: "assets/icon-image/clock-img.svg"
      }
    ]
  };
  search = "";
  oldBooking: Array<any> = [];
  currantBooking: Array<any> = [];
  constructor(
    private popoverController: PopoverController,
    private api: ApiService,
    private ntrl: NavController
  ) {}
  async presentPopover(ev: any) {
    const popover = await this.popoverController.create({
      component: PopoverPage,
      event: ev,
      translucent: true,
      cssClass: "popover",
      showBackdrop: false
    });
    return await popover.present();
  }
  ngOnInit() {
    this.init();
  }
  init() {
    this.api.startLoader();

    this.api.authGetReq("booking").subscribe(
      (res: any) => {
        console.log("res", res);
        this.oldBooking = res.data.old;
        this.currantBooking = res.data.currant;
        this.api.dismissLoader();
      },
      err => {
        console.error("err", err);
        this.api.dismissLoader();
      }
    );
  }
  openBooking(id) {
    this.ntrl.navigateRoot("ticket/" + id);
  }
  cancelBooking(id) {
    this.api.startLoader();

    console.log("id", id);
    this.api.authGetReq("booking/cancel/" + id).subscribe(
      (res: any) => {
        console.log("res", res);
        if (res.success === true) {
          this.api.presentToast(res.msg);

          this.init();
        }
      },
      err => {
        console.error("err", err);
        this.api.dismissLoader();
      }
    );
  }

  doRefresh(event) {
    console.log("Begin async operation");
    this.init();

    setTimeout(() => {
      console.log("Async operation has ended");
      event.target.complete();
    }, 3000);
  }
}
