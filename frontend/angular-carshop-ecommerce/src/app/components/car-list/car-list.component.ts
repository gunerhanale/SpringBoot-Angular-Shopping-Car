import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Car } from 'src/app/common/car';
import { CartItem } from 'src/app/common/cart-item';
import { CarService } from 'src/app/services/car.service';
import { CartService } from 'src/app/services/cart.service';

@Component({
  selector: 'app-car-list',
  templateUrl: './car-list.component.html',
  styleUrls: ['./car-list.component.css']
})
export class CarListComponent implements OnInit {

  cars: Car[];
  currentWarehouseId: number = 1;
  
  constructor(private carService: CarService,
              private cartService: CartService,
              private route: ActivatedRoute) { }

  ngOnInit() {
    this.route.paramMap.subscribe(() => {
      this.listCars();
    });
  }

  listCars() {

    //check if "id" parameter is available
    const hasWarehouseId: boolean = this.route.snapshot.paramMap.has('id');

    if (hasWarehouseId) {
      //get the "id" param string. convert string to a number using the "+" symbol
      this.currentWarehouseId = +this.route.snapshot.paramMap.get('id');
    }
    else {
      //now get the cars for the given warehouse id
      this.currentWarehouseId = 1;
    }
    

    this.carService.getCarList(this.currentWarehouseId).subscribe(
      data => {
        this.cars = data;
      }
    )  
  }

  addToCart(theCar: Car){
    console.log(`Adding to cart: ${theCar.make}, ${theCar.price}`);

    const theCartItem = new CartItem(theCar);
    this.cartService.addToCart(theCartItem);
  }

}
