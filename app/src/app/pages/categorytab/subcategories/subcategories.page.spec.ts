import { ComponentFixture, TestBed } from '@angular/core/testing';
import { SubcategoriesPage } from './subcategories.page';

describe('SubcategoriesPage', () => {
  let component: SubcategoriesPage;
  let fixture: ComponentFixture<SubcategoriesPage>;

  beforeEach(async(() => {
    fixture = TestBed.createComponent(SubcategoriesPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
