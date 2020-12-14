import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { ParkGuardPageRoutingModule } from './park-guard-routing.module';

import { ParkGuardPage } from './park-guard.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    ParkGuardPageRoutingModule
  ],
  declarations: [ParkGuardPage]
})
export class ParkGuardPageModule {}
