import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { SpaceHeaderPage } from './space-header.page';

describe('SpaceHeaderPage', () => {
  let component: SpaceHeaderPage;
  let fixture: ComponentFixture<SpaceHeaderPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SpaceHeaderPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(SpaceHeaderPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
