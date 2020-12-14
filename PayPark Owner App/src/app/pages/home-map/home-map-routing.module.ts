import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { HomeMapPage } from './home-map.page';

const routes: Routes = [
  {
    path: '',
    component: HomeMapPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class HomeMapPageRoutingModule {}
