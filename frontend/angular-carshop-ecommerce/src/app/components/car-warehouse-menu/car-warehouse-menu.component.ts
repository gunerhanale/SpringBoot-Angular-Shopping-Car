import { Component, OnInit } from '@angular/core';
import { CarWarehouse } from 'src/app/common/car-warehouse';
import { CarService } from 'src/app/services/car.service';

@Component({
  selector: 'app-car-warehouse-menu',
  templateUrl: './car-warehouse-menu.component.html',
  styleUrls: ['./car-warehouse-menu.component.css']
})
export class CarWarehouseMenuComponent implements OnInit {

  carWarehouses: CarWarehouse[];

  constructor(private carService: CarService) { }

  ngOnInit() {
    this.listCarWarehouses();
  }

  listCarWarehouses() {
    
    this.carService.getCarWarehouses().subscribe(
      data => {
        console.log('Car Warehouses= ' + JSON.stringify(data));
        this.carWarehouses = data;
      }
    );
  }

}
