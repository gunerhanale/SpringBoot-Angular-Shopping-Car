import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CarWarehouseMenuComponent } from './car-warehouse-menu.component';

describe('CarWarehouseMenuComponent', () => {
  let component: CarWarehouseMenuComponent;
  let fixture: ComponentFixture<CarWarehouseMenuComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CarWarehouseMenuComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CarWarehouseMenuComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
