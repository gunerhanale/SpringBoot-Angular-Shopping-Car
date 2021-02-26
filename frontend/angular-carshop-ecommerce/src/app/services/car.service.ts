import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Observable } from 'rxjs';
import { Car } from '../common/car';
import { map } from 'rxjs/operators';
import { CarWarehouse } from '../common/car-warehouse';

@Injectable({
  providedIn: 'root'
})
export class CarService {
  

  private appUrl = environment.ecommerceAppUrl;

  private baseUrl = this.appUrl + "/cars";

  private warehouseUrl = this.appUrl + "/car-warehouse";

  constructor(private httpClient: HttpClient) { }

  getCarList(theWarehouseId: number): Observable<Car[]>{

    // need to build URL based on category id
    const searchUrl = `${this.baseUrl}/search/findByWarehouseIdOrderByDateAddedAsc?id=${theWarehouseId}`;

    return this.httpClient.get<GetResponseCars>(searchUrl).pipe(
      map(response => response._embedded.cars)
    );
  }

  getCar(theCarId: number): Observable<Car> {
    const carUrl = `${this.baseUrl}/${theCarId}`;

    return this.httpClient.get<Car>(carUrl);
  }

  getCarWarehouses(): Observable<CarWarehouse[]> {

    return this.httpClient.get<GetResponseCarWarehouse>(this.warehouseUrl).pipe(
      map(response => response._embedded.carWarehouse)
    );
  }


}

  interface GetResponseCars {
    _embedded: {
      cars: Car[];
    }
  }

  interface GetResponseCarWarehouse {
    _embedded: {
      carWarehouse: CarWarehouse[];
    }
  }

