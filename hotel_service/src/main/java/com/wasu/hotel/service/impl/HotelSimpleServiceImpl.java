package com.wasu.hotel.service.impl;



import com.wasu.hotel.dao.IHotelDao;
import com.wasu.hotel.domain.Hotel;
import com.wasu.hotel.service.IHotelSimpleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class HotelSimpleServiceImpl implements IHotelSimpleService{

    @Autowired
    private IHotelDao hotelDao;


    @Override
    public List<Hotel> findAll() throws Exception {
        return hotelDao.findAll();
    }
}
