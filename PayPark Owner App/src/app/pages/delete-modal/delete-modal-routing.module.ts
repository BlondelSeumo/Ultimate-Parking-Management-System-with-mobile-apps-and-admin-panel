import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { DeleteModalPage } from './delete-modal.page';

const routes: Routes = [
  {
    path: '',
    component: DeleteModalPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class DeleteModalPageRoutingModule {}
