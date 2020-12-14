import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { GuardListPage } from './guard-list.page';

describe('GuardListPage', () => {
  let component: GuardListPage;
  let fixture: ComponentFixture<GuardListPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ GuardListPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(GuardListPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
