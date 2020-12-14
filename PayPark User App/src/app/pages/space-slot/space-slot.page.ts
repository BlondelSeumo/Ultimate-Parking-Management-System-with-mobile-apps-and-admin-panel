import { Component, OnInit } from "@angular/core";
import { ApiService } from "src/app/service/api.service";
import { ActivatedRoute } from "@angular/router";
import { NavController } from "@ionic/angular";

@Component({
  selector: "app-space-slot",
  templateUrl: "./space-slot.page.html",
  styleUrls: ["./space-slot.page.scss"]
})
export class SpaceSlotPage implements OnInit {
  segment: any = "";
  whereMyCar = "entry";
  zoneData: Array<any> = [];
  id: string;
  vehicle: any = [];
  selectedVehicle: string;
  defaultVehicle: any = {};
  constructor(
    private api: ApiService,
    public activeRoute: ActivatedRoute,
    private ntrl: NavController
  ) {
    this.api.startLoader();

    const startTime = api.startTime || new Date();
    const endTime = api.endTime || new Date();

    this.id = this.activeRoute.snapshot.paramMap.get("id");
    this.api
      .authPostReq(`space/${this.id}/zone`, { startTime, endTime })
      .subscribe(
        (res: any) => {
          console.log("res", res);
          this.zoneData = res.data;
          if (this.zoneData.length > 0) {
            this.segment = this.zoneData[0].id;
          }
          this.api.dismissLoader();
        },
        err => {
          console.error("err", err);
          this.api.dismissLoader();
        }
      );
  }

  ngOnInit() {
    // this.getUserVehicle();
  }
  parkMyCar(slot, available, type) {
    console.log("type", !type);

    if (!available || type) return;
    this.whereMyCar = slot;
  }
  bookingNavigation() {
    console.log("this.whereMyCar", this.whereMyCar);
    this.api.myParkingSlot = this.whereMyCar;

    this.ntrl.navigateForward("park-time/" + this.id);
  }

  getUserVehicle() {
    this.api.authGetReq("vehicle").subscribe(
      (res: any) => {
        console.log("res", res);
        this.vehicle = res.data;
        this.vehicle.forEach(element => {
          console.log("element", element);

          if (element.default_vehicle === 1) {
            this.defaultVehicle = element;

            this.selectedVehicle = element.id;
          }
        });
      },
      err => {
        console.error("err", err);
      }
    );
  }
  getDefaultVehicleById() {
    this.whereMyCar = "entry";
    this.vehicle.forEach(ele => {
      if (ele.id === this.selectedVehicle) {
        this.defaultVehicle = ele;
        console.log("this.defaultVehicle", this.defaultVehicle);
        // this.selectedVehicle = ele.id
        console.log("this.selectedVehicle", this.selectedVehicle);
      }
    });
  }
}
