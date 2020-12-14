import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ZoneEditPage } from './zone-edit.page';

const routes: Routes = [
  {
    path: '',
    component: ZoneEditPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ZoneEditPageRoutingModule {}
