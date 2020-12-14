import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';
import { ApiService } from 'src/app/service/api.service';

@Component({
  selector: 'app-forgot',
  templateUrl: './forgot.page.html',
  styleUrls: ['./forgot.page.scss'],
})
export class ForgotPage implements OnInit {
  data:any = {};
  constructor(private ntrl:NavController, private api: ApiService) { }

  ngOnInit() {
  }
  login(){
    const data = {
      email: this.data.email
    };
    this.api.forgotPsw(data).subscribe((res: any) => {
      if(res.success){
        this.api.presentToast(res.msg);
        this.ntrl.navigateForward(['login']);
      } else {
        this.api.presentToast(res.msg);
      }
    }, err => {
      console.log('err ', err);
    })
    //
  }
}
