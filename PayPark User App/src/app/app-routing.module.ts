import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: '',
    loadChildren: () => import('./tabs/tabs.module').then(m => m.TabsPageModule)
  },
  { path: 'login', loadChildren: './pages/login/login.module#LoginPageModule' },
  { path: 'signup', loadChildren: './pages/signup/signup.module#SignupPageModule' },
  { path: 'get-otp', loadChildren: './pages/get-otp/get-otp.module#GetOtpPageModule' },
  { path: 'verify', loadChildren: './pages/verify/verify.module#VerifyPageModule' },
  { path: 'all-parking', loadChildren: './pages/all-parking/all-parking.module#AllParkingPageModule' },
  { path: 'park-time/:id', loadChildren: './pages/park-time/park-time.module#ParkTimePageModule' },
  { path: 'select-car', loadChildren: './pages/select-car/select-car.module#SelectCarPageModule' },
  { path: 'add-card', loadChildren: './pages/add-card/add-card.module#AddCardPageModule' },
  { path: 'setting', loadChildren: './pages/setting/setting.module#SettingPageModule' },
  { path: 'policy', loadChildren: './pages/policy/policy.module#PolicyPageModule' },
  { path: 'review/:id', loadChildren: './pages/review/review.module#ReviewPageModule' },
  { path: 'notification', loadChildren: './pages/notification/notification.module#NotificationPageModule' },
  { path: 'cancel-booking', loadChildren: './pages/cancel-booking/cancel-booking.module#CancelBookingPageModule' },
  { path: 'parking-detail/:id', loadChildren: './pages/parking-detail/parking-detail.module#ParkingDetailPageModule' },
  { path: 'ticket/:id', loadChildren: './pages/ticket/ticket.module#TicketPageModule' },
  { path: 'car-list', loadChildren: './pages/car-list/car-list.module#CarListPageModule' },
  { path: 'delete-modal', loadChildren: './pages/delete-modal/delete-modal.module#DeleteModalPageModule' },
  { path: 'rebook', loadChildren: './pages/rebook/rebook.module#RebookPageModule' },
  { path: 'popover', loadChildren: './pages/popover/popover.module#PopoverPageModule' },
  { path: 'forgot', loadChildren: './pages/forgot/forgot.module#ForgotPageModule' },
  {
    path: 'space-slot/:id',
    loadChildren: () => import('./pages/space-slot/space-slot.module').then(m => m.SpaceSlotPageModule)
  }
];
@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
