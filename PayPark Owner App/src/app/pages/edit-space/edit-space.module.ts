import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { EditSpacePageRoutingModule } from './edit-space-routing.module';

import { EditSpacePage } from './edit-space.page';
import { AgmCoreModule } from '@agm/core';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    EditSpacePageRoutingModule,
    AgmCoreModule.forRoot({
      apiKey: 'AIzaSyCb9lhLYxUnRjSp1oIGl6aAsXLODc3o-f4'
    })
  ],
  declarations: [EditSpacePage]
})
export class EditSpacePageModule { }
