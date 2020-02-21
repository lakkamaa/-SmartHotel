package com.wasu.hotel.domain;



//      酒店的信息   t_order | t_hotel
public class Hotel {

    private String name;
    private Integer num;
    private String area;
    private String address;
    private Float lng;
    private Float lat;

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public Float getLng() {
        return lng;
    }

    public Float getLat() {
        return lat;
    }

    public Integer getNum() {
        return num;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setLng(Float lng) {
        this.lng = lng;
    }

    public void setLat(Float lat) {
        this.lat = lat;
    }

    public void setNum(Integer num) {
        this.num = num;
    }
}
