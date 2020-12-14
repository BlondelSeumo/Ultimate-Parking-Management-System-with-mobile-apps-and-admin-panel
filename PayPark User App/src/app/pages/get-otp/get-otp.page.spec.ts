import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { GetOtpPage } from './get-otp.page';

describe('GetOtpPage', () => {
  let component: GetOtpPage;
  let fixture: ComponentFixture<GetOtpPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ GetOtpPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(GetOtpPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
