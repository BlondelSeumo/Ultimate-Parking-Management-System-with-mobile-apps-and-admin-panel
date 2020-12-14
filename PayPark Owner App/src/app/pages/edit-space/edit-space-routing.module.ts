import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { EditSpacePage } from './edit-space.page';

const routes: Routes = [
  {
    path: '',
    component: EditSpacePage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class EditSpacePageRoutingModule {}
