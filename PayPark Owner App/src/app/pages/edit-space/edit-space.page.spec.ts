import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { EditSpacePage } from './edit-space.page';

describe('EditSpacePage', () => {
  let component: EditSpacePage;
  let fixture: ComponentFixture<EditSpacePage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EditSpacePage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(EditSpacePage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
