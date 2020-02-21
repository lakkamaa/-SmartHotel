package com.wasu.hotel.service;

import com.wasu.hotel.domain.Hotel;

import java.util.List;

public interface IHotelSimpleService {
    public List<Hotel> findAll() throws Exception;
}
