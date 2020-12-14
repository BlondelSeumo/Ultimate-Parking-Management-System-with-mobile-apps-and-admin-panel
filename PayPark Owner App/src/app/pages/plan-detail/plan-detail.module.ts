import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { PlanDetailPageRoutingModule } from './plan-detail-routing.module';

import { PlanDetailPage } from './plan-detail.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    PlanDetailPageRoutingModule
  ],
  declarations: [PlanDetailPage]
})
export class PlanDetailPageModule {}
