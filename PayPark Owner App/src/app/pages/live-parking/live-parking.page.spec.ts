import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { LiveParkingPage } from './live-parking.page';

describe('LiveParkingPage', () => {
  let component: LiveParkingPage;
  let fixture: ComponentFixture<LiveParkingPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ LiveParkingPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(LiveParkingPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
