import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { OwnerDetailPage } from './owner-detail.page';

const routes: Routes = [
  {
    path: '',
    component: OwnerDetailPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class OwnerDetailPageRoutingModule {}
