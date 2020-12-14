import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';
import { modalController } from '@ionic/core';

@Component({
  selector: 'app-delete-modal',
  templateUrl: './delete-modal.page.html',
  styleUrls: ['./delete-modal.page.scss'],
})
export class DeleteModalPage implements OnInit {

  constructor(private ntrl:NavController) { }

  ngOnInit() {
  }
  cancelBtn(){
    modalController.dismiss();
      this.ntrl.navigateForward(['transaction'])
  }
}
