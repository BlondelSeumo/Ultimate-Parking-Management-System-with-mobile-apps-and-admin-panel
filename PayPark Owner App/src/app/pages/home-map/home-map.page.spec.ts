import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { HomeMapPage } from './home-map.page';

describe('HomeMapPage', () => {
  let component: HomeMapPage;
  let fixture: ComponentFixture<HomeMapPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HomeMapPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(HomeMapPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
