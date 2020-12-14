import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { LiveParkingPageRoutingModule } from './live-parking-routing.module';

import { LiveParkingPage } from './live-parking.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    LiveParkingPageRoutingModule
  ],
  declarations: [LiveParkingPage]
})
export class LiveParkingPageModule {}
