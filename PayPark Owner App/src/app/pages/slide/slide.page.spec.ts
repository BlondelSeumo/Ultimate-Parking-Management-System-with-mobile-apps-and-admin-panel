import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { SlidePage } from './slide.page';

describe('SlidePage', () => {
  let component: SlidePage;
  let fixture: ComponentFixture<SlidePage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SlidePage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(SlidePage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
