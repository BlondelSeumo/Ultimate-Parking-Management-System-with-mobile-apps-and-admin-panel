import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { DeleteModalPage } from './delete-modal.page';

describe('DeleteModalPage', () => {
  let component: DeleteModalPage;
  let fixture: ComponentFixture<DeleteModalPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DeleteModalPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(DeleteModalPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
