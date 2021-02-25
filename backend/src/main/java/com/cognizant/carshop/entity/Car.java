package com.cognizant.carshop.entity;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;

@Entity
@Table(name = "car")
@Data
public class Car {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "warehouse_id", nullable = false)
    private Warehouse warehouse;

    @Column(name = "make")
    private String make;

    @Column(name = "model")
    private String model;

    @Column(name = "year_model")
    private BigInteger yearModel;

    @Column(name = "price")
    private BigDecimal price;

    @Column(name = "licensed")
    private boolean licensed;

    @Column(name = "location")
    private String location;

    @Column(name = "date_added")
    @CreationTimestamp
    private Date dataAdded;

}