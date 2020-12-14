import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { GuardListPageRoutingModule } from './guard-list-routing.module';

import { GuardListPage } from './guard-list.page';
import { Ng2SearchPipeModule } from 'ng2-search-filter';
@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    Ng2SearchPipeModule,
    GuardListPageRoutingModule
  ],
  declarations: [GuardListPage]
})
export class GuardListPageModule { }
