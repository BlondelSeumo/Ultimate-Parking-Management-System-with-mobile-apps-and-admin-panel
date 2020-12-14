import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PolicyPage } from './policy.page';

describe('PolicyPage', () => {
  let component: PolicyPage;
  let fixture: ComponentFixture<PolicyPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PolicyPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PolicyPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
