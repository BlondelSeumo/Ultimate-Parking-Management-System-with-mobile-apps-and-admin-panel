import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ParkAddressPage } from './park-address.page';

const routes: Routes = [
  {
    path: '',
    component: ParkAddressPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ParkAddressPageRoutingModule {}
