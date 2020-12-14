import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { SpaceSlotPage } from './space-slot.page';

const routes: Routes = [
  {
    path: '',
    component: SpaceSlotPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class SpaceSlotPageRoutingModule {}
