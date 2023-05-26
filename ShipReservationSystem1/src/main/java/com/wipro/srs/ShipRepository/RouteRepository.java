package com.wipro.srs.ShipRepository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wipro.srs.entity.Route;

@Repository
public interface RouteRepository extends JpaRepository<Route , Integer>{

}
