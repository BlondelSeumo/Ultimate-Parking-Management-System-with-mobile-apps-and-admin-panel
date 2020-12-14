import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { PlanDetailPage } from './plan-detail.page';

const routes: Routes = [
  {
    path: '',
    component: PlanDetailPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class PlanDetailPageRoutingModule {}
