package com.wasu.hotel.domain;


import com.wasu.hotel.utils.DateUtils;

import java.util.Date;


//      订单
public class OrdersWasu {

    private Integer id;
    private String name;
    private Integer number_of_people;
    private Date start_time;
    private String order_source;
    private Integer occupancy_days;
    private String  area;

    private String lng;
    private String lat;
    private String address;
    private Date due_out_date;

    private String start_timeStr;
    private String due_out_dateStr;

    public String getLng() {
        return lng;
    }

    public void setLng(String lng) {
        this.lng = lng;
    }

    public String getLat() {
        return lat;
    }

    public void setLat(String lat) {
        this.lat = lat;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getDue_out_date() {
        return due_out_date;
    }

    public void setDue_out_date(Date due_out_date) {
        this.due_out_date = due_out_date;
    }

    public String getDue_out_dateStr() {
        if(due_out_date!=null){
            due_out_dateStr= DateUtils.date2String(due_out_date,"yyyy-MM-dd HH:mm");
        }
        return due_out_dateStr;
    }

    public void setDue_out_dateStr(String due_out_dateStr) {
        this.due_out_dateStr = due_out_dateStr;
    }



    public String getStart_timeStr() {
        if(start_time!=null){
            start_timeStr= DateUtils.date2String(start_time,"yyyy-MM-dd HH:mm");
        }
        return start_timeStr;
    }

    public void setStart_timeStr(String start_timeStr) {
        this.start_timeStr = start_timeStr;
    }





    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getNumber_of_people() {
        return number_of_people;
    }

    public void setNumber_of_people(Integer number_of_people) {
        this.number_of_people = number_of_people;
    }

    public Date getStart_time() {
        return start_time;
    }

    public void setStart_time(Date start_time) {
        this.start_time = start_time;
    }

    public Integer getOccupancy_days() {
        return occupancy_days;
    }

    public void setOccupancy_days(Integer occupancy_days) {
        this.occupancy_days = occupancy_days;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }


    public String getOrder_source() {
        return order_source;
    }

    public void setOrder_source(String order_source) {
        this.order_source = order_source;
    }

    @Override
    public String toString() {
        return "OrdersWasu{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", number_of_people=" + number_of_people +
                ", start_time=" + start_time +
                ", order_source='" + order_source + '\'' +
                ", occupancy_days=" + occupancy_days +
                ", area='" + area + '\'' +
                ", lng='" + lng + '\'' +
                ", lat='" + lat + '\'' +
                ", address='" + address + '\'' +
                ", due_out_date=" + due_out_date +
                ", start_timeStr='" + start_timeStr + '\'' +
                ", due_out_dateStr='" + due_out_dateStr + '\'' +
                '}';
    }
}
