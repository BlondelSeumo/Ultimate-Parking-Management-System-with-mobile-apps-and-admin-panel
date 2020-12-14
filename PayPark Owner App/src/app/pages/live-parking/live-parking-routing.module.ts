import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { LiveParkingPage } from './live-parking.page';

const routes: Routes = [
  {
    path: '',
    component: LiveParkingPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class LiveParkingPageRoutingModule {}
