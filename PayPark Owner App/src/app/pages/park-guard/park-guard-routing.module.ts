import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ParkGuardPage } from './park-guard.page';

const routes: Routes = [
  {
    path: '',
    component: ParkGuardPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ParkGuardPageRoutingModule {}
