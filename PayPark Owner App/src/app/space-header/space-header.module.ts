import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { SpaceHeaderPageRoutingModule } from './space-header-routing.module';

import { SpaceHeaderPage } from './space-header.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    SpaceHeaderPageRoutingModule
  ],
  declarations: [SpaceHeaderPage]
})
export class SpaceHeaderPageModule {}
