package com.jhta.concert.vo;

public class ConcertVo_Otk {
	private int gnum;
	private String conname;
	private String showtitle;
	private String loc;
	private String place;
	private int price;
	private String startdate;
	private String closedate;
	private int age;
	private String singer;
	public ConcertVo_Otk(int gnum, String conname, String showtitle, String loc, String place, int price,
			String startdate, String closedate, int age, String singer) {
		super();
		this.gnum = gnum;
		this.conname = conname;
		this.showtitle = showtitle;
		this.loc = loc;
		this.place = place;
		this.price = price;
		this.startdate = startdate;
		this.closedate = closedate;
		this.age = age;
		this.singer = singer;
	}
	public int getGnum() {
		return gnum;
	}
	public void setGnum(int gnum) {
		this.gnum = gnum;
	}
	public String getConname() {
		return conname;
	}
	public void setConname(String conname) {
		this.conname = conname;
	}
	public String getShowtitle() {
		return showtitle;
	}
	public void setShowtitle(String showtitle) {
		this.showtitle = showtitle;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getClosedate() {
		return closedate;
	}
	public void setClosedate(String closedate) {
		this.closedate = closedate;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
}
