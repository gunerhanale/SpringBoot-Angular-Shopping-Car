import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { CarListComponent } from './components/car-list/car-list.component';
import { HttpClientModule} from '@angular/common/http';
import { CarService } from './services/car.service';

import { Routes, RouterModule} from '@angular/router';
import { CarWarehouseMenuComponent } from './components/car-warehouse-menu/car-warehouse-menu.component';
import { CarDetailsComponent } from './components/car-details/car-details.component';
import { CartStatusComponent } from './components/cart-status/cart-status.component';

const routes: Routes = [
  {path : 'cars/:id', component: CarDetailsComponent},
  {path : 'warehouse/:id', component: CarListComponent},
  {path:  'warehouse/:id/:name', component: CarListComponent},
  {path : 'warehouse', component: CarListComponent},
  {path : 'cars', component: CarListComponent},
  {path: '', redirectTo: '/cars', pathMatch: 'full'},
  {path: '**', redirectTo: '/cars', pathMatch: 'full'}
];

@NgModule({
  declarations: [
    AppComponent,
    CarListComponent,
    CarWarehouseMenuComponent,
    CarDetailsComponent,
    CartStatusComponent
  ],
  imports: [
    RouterModule.forRoot(routes),
    BrowserModule,
    HttpClientModule
  ],
  providers: [CarService],
  bootstrap: [AppComponent]
})
export class AppModule { }
