import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { ZoneEditPage } from './zone-edit.page';

describe('ZoneEditPage', () => {
  let component: ZoneEditPage;
  let fixture: ComponentFixture<ZoneEditPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ZoneEditPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(ZoneEditPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
