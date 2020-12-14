import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { OwnerDetailPage } from './owner-detail.page';

describe('OwnerDetailPage', () => {
  let component: OwnerDetailPage;
  let fixture: ComponentFixture<OwnerDetailPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ OwnerDetailPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(OwnerDetailPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
