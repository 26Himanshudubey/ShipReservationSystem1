package com.wipro.srs.ShipRepository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wipro.srs.entity.Ship;

@Repository
public interface ShipRepository extends JpaRepository<Ship,Long>{
  
}
