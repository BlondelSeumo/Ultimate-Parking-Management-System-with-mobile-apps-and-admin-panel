import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { OwnerDetailPageRoutingModule } from './owner-detail-routing.module';

import { OwnerDetailPage } from './owner-detail.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    OwnerDetailPageRoutingModule
  ],
  declarations: [OwnerDetailPage]
})
export class OwnerDetailPageModule { }
