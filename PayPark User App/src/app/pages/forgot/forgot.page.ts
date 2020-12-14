import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-forgot',
  templateUrl: './forgot.page.html',
  styleUrls: ['./forgot.page.scss'],
})
export class ForgotPage implements OnInit {

  step1 = true;
  step2 = false;
  step3 = false;
  constructor(private ntrl: NavController) { }

  ngOnInit() {
  }
  backPage() {
    this.ntrl.back();
  }
  signIn() {
    this.ntrl.navigateForward(['login']);
  }
  findUser() {
    this.step1 = false;
    this.step2 = true;
    this.step3 = false;
  }
  verifyUser() {
    this.step1 = false;
    this.step2 = false;
    this.step3 = true;

  }
  changePassword() {

    this.step1 = false;
    this.step2 = false;
    this.step3 = false;
  }
  editInformation() {
    this.step1 = true;
    this.step2 = false;
    this.step3 = false;
  }
}
