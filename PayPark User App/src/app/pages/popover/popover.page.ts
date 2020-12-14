import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';
import { popoverController } from '@ionic/core';

@Component({
  selector: 'app-popover',
  templateUrl: './popover.page.html',
  styleUrls: ['./popover.page.scss'],
})
export class PopoverPage implements OnInit {

  constructor(private ntrl:NavController) { }

  ngOnInit() {
  }
  rebook(){
      popoverController.dismiss();
      this.ntrl.navigateForward(['rebook']);
  }
  cancel(){
    popoverController.dismiss();
    this.ntrl.navigateForward(['cancel-booking'])
  }
}
