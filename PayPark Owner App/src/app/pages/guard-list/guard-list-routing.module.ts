import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { GuardListPage } from './guard-list.page';

const routes: Routes = [
  {
    path: '',
    component: GuardListPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class GuardListPageRoutingModule {}
