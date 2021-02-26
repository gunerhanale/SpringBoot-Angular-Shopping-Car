package com.cognizant.carshop.dao;

import com.cognizant.carshop.entity.Warehouse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel = "carWarehouse", path = "car-warehouse")
public interface WarehouseRepository extends JpaRepository<Warehouse, Long> {

}
