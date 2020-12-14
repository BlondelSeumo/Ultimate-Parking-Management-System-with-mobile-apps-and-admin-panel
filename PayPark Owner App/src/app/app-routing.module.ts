import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';
import { SpaceHeaderComponent } from './pages/space-header/space-header.component';

const routes: Routes = [
  {
    path: '',
    redirectTo: 'home',
    pathMatch: 'full'
  },
  {
    path: 'home',
    loadChildren: () => import('./home/home.module').then(m => m.HomePageModule)
  },
  {
    path: 'list',
    loadChildren: () => import('./list/list.module').then(m => m.ListPageModule)
  },
  {
    path: 'login',
    loadChildren: () => import('./pages/login/login.module').then(m => m.LoginPageModule)
  },
  {
    path: 'signup',
    loadChildren: () => import('./pages/signup/signup.module').then(m => m.SignupPageModule)
  },
  {
    path: 'slide',
    loadChildren: () => import('./pages/slide/slide.module').then(m => m.SlidePageModule)
  },
  {
    path: 'owner-detail',
    loadChildren: () => import('./pages/owner-detail/owner-detail.module').then(m => m.OwnerDetailPageModule)
  },
  {
    path: 'park-address',
    loadChildren: () => import('./pages/park-address/park-address.module').then(m => m.ParkAddressPageModule)
  },
  {
    path: 'park-guard',
    loadChildren: () => import('./pages/park-guard/park-guard.module').then(m => m.ParkGuardPageModule)
  },
  {
    path: 'guard-list',
    loadChildren: () => import('./pages/guard-list/guard-list.module').then(m => m.GuardListPageModule)
  },
  {
    path: 'transaction',
    loadChildren: () => import('./pages/transaction/transaction.module').then(m => m.TransactionPageModule)
  },
  {
    path: 'scanner',
    loadChildren: () => import('./pages/scanner/scanner.module').then(m => m.ScannerPageModule)
  },
  {
    path: 'scanner/:id',
    loadChildren: () => import('./pages/scanner/scanner.module').then(m => m.ScannerPageModule)
  },
  {
    path: 'review',
    loadChildren: () => import('./pages/review/review.module').then(m => m.ReviewPageModule)
  },
  {
    path: 'setting',
    loadChildren: () => import('./pages/setting/setting.module').then(m => m.SettingPageModule)
  },
  {
    path: 'forgot',
    loadChildren: () => import('./pages/forgot/forgot.module').then(m => m.ForgotPageModule)
  },
  {
    path: 'delete-modal',
    loadChildren: () => import('./pages/delete-modal/delete-modal.module').then(m => m.DeleteModalPageModule)
  },
  {
    path: 'home-map',
    loadChildren: () => import('./pages/home-map/home-map.module').then(m => m.HomeMapPageModule)
  },
  {
    path: 'edit-space',
    loadChildren: () => import('./pages/edit-space/edit-space.module').then(m => m.EditSpacePageModule)
  },
  {
    path: 'zone-edit',
    loadChildren: () => import('./pages/zone-edit/zone-edit.module').then( m => m.ZoneEditPageModule)
  },
  {
    path: 'live-parking',
    loadChildren: () => import('./pages/live-parking/live-parking.module').then( m => m.LiveParkingPageModule)
  },
  {
    path: 'plan-detail',
    loadChildren: () => import('./pages/plan-detail/plan-detail.module').then( m => m.PlanDetailPageModule)
  },
  {
    path: 'images',
    loadChildren: () => import('./pages/images/images.module').then( m => m.ImagesPageModule)
  },

];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  declarations: [],

  exports: [RouterModule]
})
export class AppRoutingModule { }
