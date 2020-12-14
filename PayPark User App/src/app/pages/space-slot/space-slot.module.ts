import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { SpaceSlotPageRoutingModule } from './space-slot-routing.module';

import { SpaceSlotPage } from './space-slot.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    SpaceSlotPageRoutingModule
  ],
  declarations: [SpaceSlotPage]
})
export class SpaceSlotPageModule {}
