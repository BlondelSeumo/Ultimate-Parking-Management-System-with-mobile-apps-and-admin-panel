import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SelectCarPage } from './select-car.page';

describe('SelectCarPage', () => {
  let component: SelectCarPage;
  let fixture: ComponentFixture<SelectCarPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SelectCarPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SelectCarPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
