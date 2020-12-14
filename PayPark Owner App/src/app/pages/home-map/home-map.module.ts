import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { HomeMapPageRoutingModule } from './home-map-routing.module';

import { HomeMapPage } from './home-map.page';
import { AgmCoreModule } from '@agm/core';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    HomeMapPageRoutingModule,
    AgmCoreModule.forRoot({
      apiKey: 'AIzaSyCb9lhLYxUnRjSp1oIGl6aAsXLODc3o-f4'
    }),
  ],
  declarations: [HomeMapPage]
})
export class HomeMapPageModule { }
