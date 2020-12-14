import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { ParkGuardPage } from './park-guard.page';

describe('ParkGuardPage', () => {
  let component: ParkGuardPage;
  let fixture: ComponentFixture<ParkGuardPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ParkGuardPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(ParkGuardPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
