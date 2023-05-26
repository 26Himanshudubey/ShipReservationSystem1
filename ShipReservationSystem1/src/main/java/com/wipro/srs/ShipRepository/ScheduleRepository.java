package com.wipro.srs.ShipRepository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wipro.srs.entity.Schedule;

@Repository
public interface ScheduleRepository extends JpaRepository<Schedule,Integer>{

}
