import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouteReuseStrategy } from '@angular/router';

import { IonicModule, IonicRouteStrategy } from '@ionic/angular';
import { SplashScreen } from '@ionic-native/splash-screen/ngx';
import { StatusBar } from '@ionic-native/status-bar/ngx';
import { LocalNotifications } from '@ionic-native/local-notifications/ngx';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { DeleteModalPageModule } from './pages/delete-modal/delete-modal.module';
import { PopoverPageModule } from './pages/popover/popover.module';

import { HttpClientModule } from '@angular/common/http';
import { IonBottomDrawerModule } from 'ion-bottom-drawer';

import { Ng2SearchPipeModule } from 'ng2-search-filter';
import { OneSignal } from '@ionic-native/onesignal/ngx';
import { Geolocation } from '@ionic-native/geolocation/ngx';
import { Camera } from '@ionic-native/camera/ngx';
@NgModule({
  declarations: [AppComponent],
  entryComponents: [],
  imports: [BrowserModule, IonicModule.forRoot(), AppRoutingModule,
    DeleteModalPageModule,
    PopoverPageModule,
    HttpClientModule,
    IonBottomDrawerModule,
    Ng2SearchPipeModule

  ],
  providers: [
    Geolocation,
    StatusBar,
    LocalNotifications,
    SplashScreen,
    OneSignal,
    Camera,
    { provide: RouteReuseStrategy, useClass: IonicRouteStrategy }
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
