import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AllParkingPage } from './all-parking.page';

describe('AllParkingPage', () => {
  let component: AllParkingPage;
  let fixture: ComponentFixture<AllParkingPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AllParkingPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AllParkingPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
