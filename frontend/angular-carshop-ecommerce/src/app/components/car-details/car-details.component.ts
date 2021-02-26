import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Car } from 'src/app/common/car';
import { CartItem } from 'src/app/common/cart-item';
import { CarService } from 'src/app/services/car.service';
import { CartService } from 'src/app/services/cart.service';

@Component({
  selector: 'app-car-details',
  templateUrl: './car-details.component.html',
  styleUrls: ['./car-details.component.css']
})
export class CarDetailsComponent implements OnInit {

  car: Car = new Car();

  constructor(private carService: CarService,
              private cartService: CartService,
              private route: ActivatedRoute) { }

  ngOnInit(): void {
    this.route.paramMap.subscribe(() => {
      this.handleCarDetails();
    })
  }

  handleCarDetails() {
    
    const theCarId: number = +this.route.snapshot.paramMap.get("id");

    this.carService.getCar(theCarId).subscribe(
      data => {
        this.car = data;
      }
    )
  }

  addToCart(){
    console.log(`Adding to cart: ${this.car.make}, ${this.car.price}`);

    const theCartItem = new CartItem(this.car);
    this.cartService.addToCart(theCartItem);
  }

}
