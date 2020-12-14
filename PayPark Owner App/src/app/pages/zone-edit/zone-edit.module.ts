import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { ZoneEditPageRoutingModule } from './zone-edit-routing.module';

import { ZoneEditPage } from './zone-edit.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    ZoneEditPageRoutingModule
  ],
  declarations: [ZoneEditPage]
})
export class ZoneEditPageModule {}
