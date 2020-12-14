import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { SpaceSlotPage } from './space-slot.page';

describe('SpaceSlotPage', () => {
  let component: SpaceSlotPage;
  let fixture: ComponentFixture<SpaceSlotPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SpaceSlotPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(SpaceSlotPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
