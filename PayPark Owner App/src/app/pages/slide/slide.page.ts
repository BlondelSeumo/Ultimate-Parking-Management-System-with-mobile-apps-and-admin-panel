import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-slide',
  templateUrl: './slide.page.html',
  styleUrls: ['./slide.page.scss'],
})
export class SlidePage implements OnInit {

  constructor(private ntrl:NavController) { }

  ngOnInit() {
  }
  home(){
    this.ntrl.navigateForward(['home']);
  }
}
