import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { ParkAddressPage } from './park-address.page';

describe('ParkAddressPage', () => {
  let component: ParkAddressPage;
  let fixture: ComponentFixture<ParkAddressPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ParkAddressPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(ParkAddressPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
