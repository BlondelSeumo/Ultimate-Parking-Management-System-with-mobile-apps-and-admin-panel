import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-rebook',
  templateUrl: './rebook.page.html',
  styleUrls: ['./rebook.page.scss'],
})
export class RebookPage implements OnInit {

  constructor(private ntrl:NavController) { this.timerTick()   }
  timer: any = {
    remainingTime: 500,
    timeDisp: '0 : 0',
  }
  ngOnInit() {
  }
  back(){
    this.ntrl.back();
  }
  timerTick() {
    setTimeout(() => {
      this.timer.remainingTime--;
      var h = Math.floor(this.timer.remainingTime / 3600);
      var m = Math.floor(this.timer.remainingTime % 3600 / 60);
      var s = Math.floor(this.timer.remainingTime % 3600 % 60);
      let hDisplay = h;
      let mDisplay = m;
      let sDisplay = s;
      this.timer.timeDisp = hDisplay +' : ' +mDisplay + ' : ' + sDisplay
      if (this.timer.remainingTime != 0) {
        this.timerTick();
      }
    }, 1000);
  }
}
