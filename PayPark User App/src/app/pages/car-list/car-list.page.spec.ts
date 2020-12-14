import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CarListPage } from './car-list.page';

describe('CarListPage', () => {
  let component: CarListPage;
  let fixture: ComponentFixture<CarListPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CarListPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CarListPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
