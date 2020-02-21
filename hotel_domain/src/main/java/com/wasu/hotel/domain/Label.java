package com.wasu.hotel.domain;


//      标签
public class Label {

    private Integer hotelNum;
//    SELECT COUNT(*) as hotelNum FROM(SELECT DISTINCT NAME FROM t_order)；

    private Integer todayNum;
//    SELECT COUNT(id),DATE(start_time) FROM t_order WHERE DATE(start_time) = DATE(NOW()) GROUP BY DATE( start_time )

    private Integer weekNum;
    //    SELECT COUNT(id) FROM t_order WHERE (start_time BETWEEN (SELECT DATE_SUB(NOW(),INTERVAL 1 WEEK)) AND NOW())
    private Integer totalNum;
//    SELECT COUNT(id) FROM t_order


    public Integer getHotelNum() {
        return hotelNum;
    }

    public void setHotelNum(Integer hotelNum) {
        this.hotelNum = hotelNum;
    }

    public Integer getTodayNum() {
        return todayNum;
    }

    public void setTodayNum(Integer todayNum) {
        this.todayNum = todayNum;
    }

    public Integer getWeekNum() {
        return weekNum;
    }

    public void setWeekNum(Integer weekNum) {
        this.weekNum = weekNum;
    }

    public Integer getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(Integer totalNum) {
        this.totalNum = totalNum;
    }
}
