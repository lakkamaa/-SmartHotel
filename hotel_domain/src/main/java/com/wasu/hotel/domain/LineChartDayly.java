package com.wasu.hotel.domain;

import com.wasu.hotel.utils.DateUtils;

import java.sql.Date;


//      折线图
public class LineChartDayly extends Chart{

    private Date date;
    private Integer num;
    private String dateStr;

    private Integer value;
    private String key;

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getDateStr() {
        if(date!=null){
            dateStr= DateUtils.date2String(date,"yyyy-MM-dd");
        }
        return dateStr;
    }

    public void setDateStr(String dateStr) {
        this.dateStr = dateStr;
    }


    @Override
    public Integer getValue() {
        return num;
    }

    @Override
    public void setValue(Integer value) {
        this.num = value;
    }

    @Override
    public String getKey() {
        if(date!=null){
            dateStr= DateUtils.date2String(date,"yyyy-MM-dd");
        }
        return dateStr;
    }

    @Override
    public void setKey(String key) {
        this.dateStr = key;
    }
}

