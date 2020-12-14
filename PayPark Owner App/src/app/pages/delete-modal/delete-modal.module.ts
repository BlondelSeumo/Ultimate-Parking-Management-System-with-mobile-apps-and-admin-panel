import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { DeleteModalPageRoutingModule } from './delete-modal-routing.module';

import { DeleteModalPage } from './delete-modal.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    DeleteModalPageRoutingModule
  ],
  declarations: [DeleteModalPage]
})
export class DeleteModalPageModule {}
