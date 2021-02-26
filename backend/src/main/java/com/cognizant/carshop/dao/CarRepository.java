package com.cognizant.carshop.dao;

import com.cognizant.carshop.entity.Car;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestParam;

@CrossOrigin("http://localhost:4200")
public interface CarRepository extends JpaRepository<Car,Long> {

    Page<Car> findByWarehouseIdOrderByDateAddedAsc(@RequestParam("id") Long id, Pageable pageable);
}
