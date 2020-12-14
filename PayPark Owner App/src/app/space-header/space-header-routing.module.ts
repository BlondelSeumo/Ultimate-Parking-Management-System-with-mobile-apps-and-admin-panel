import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { SpaceHeaderPage } from './space-header.page';

const routes: Routes = [
  {
    path: '',
    component: SpaceHeaderPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class SpaceHeaderPageRoutingModule {}
