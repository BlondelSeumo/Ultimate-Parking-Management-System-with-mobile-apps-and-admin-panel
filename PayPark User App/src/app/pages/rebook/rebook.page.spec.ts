import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { RebookPage } from './rebook.page';

describe('RebookPage', () => {
  let component: RebookPage;
  let fixture: ComponentFixture<RebookPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ RebookPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(RebookPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
