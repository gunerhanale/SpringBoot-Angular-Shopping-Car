package com.cognizant.carshop.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Set;

@Entity
@Table(name = "warehouse")
@Getter
@Setter
public class Warehouse {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "location_lat")
    private BigDecimal location_lat;

    @Column(name = "location_long")
    private BigDecimal location_long;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "warehouse")
    private Set<Car> cars;

}