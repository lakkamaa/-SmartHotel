package com.wasu.hotel.service.impl;

import com.wasu.hotel.dao.ILabelDao;
import com.wasu.hotel.domain.Label;
import com.wasu.hotel.service.ILabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class LabelServiceImpl implements ILabelService {


    @Autowired
    private ILabelDao homeDao;

    @Override
    public Label all() throws Exception {

        Label label = new Label();

        label.setHotelNum(homeDao.hotelNum());
        label.setTodayNum(homeDao.todayNum());
        label.setWeekNum(homeDao.weekNum());
        label.setTotalNum(homeDao.totalNum());
        return label;

    }
}
