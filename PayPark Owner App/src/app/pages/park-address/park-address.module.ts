import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";
import { FormsModule } from "@angular/forms";

import { IonicModule } from "@ionic/angular";

import { ParkAddressPageRoutingModule } from "./park-address-routing.module";
import { AgmCoreModule } from "@agm/core";
import { ParkAddressPage } from "./park-address.page";
import { GooglePlaceModule } from "ngx-google-places-autocomplete";
@NgModule({
  imports: [
    CommonModule,
    GooglePlaceModule,
    FormsModule,
    IonicModule,
    ParkAddressPageRoutingModule,
    AgmCoreModule.forRoot({
      apiKey: "AIzaSyCb9lhLYxUnRjSp1oIGl6aAsXLODc3o-f4"
    })
  ],
  declarations: [ParkAddressPage]
})
export class ParkAddressPageModule {}
