import { Car } from "./car";

export class CartItem {

    id: number;
    name: string;
    price: number;

    quantity: number;

    constructor(car: Car){
        this.id = car.id;
        this.name = car.model;
        this.price = car.price;

        this.quantity = 1;
    }
}
