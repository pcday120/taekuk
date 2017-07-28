package com.jhta.imagebal.vo;

public class ImageBalVo {
	public int gnum;
	public String conname;
	public String showtitle;
	public String loc;
	public String place;
	public int price;
	public String startdate;
	public String closedate;
	public int age;
	public String singer;
	public int imgnum;
	public String imgtype;
	public String orgname;
	public String savename;
	public int gnum1;
	public ImageBalVo(){}
	public ImageBalVo(int gnum, String conname, String showtitle, String loc, String place, int price, String startdate,
			String closedate, int age, String singer, int imgnum, String imgtype, String orgname, String savename) {
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
		this.imgnum = imgnum;
		this.imgtype = imgtype;
		this.orgname = orgname;
		this.savename = savename;
		this.gnum1=gnum1;
	}
	public int getGnum1() {
		return gnum1;
	}
	public void setGnum1(int gnum1) {
		this.gnum1 = gnum1;
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
	public int getImgnum() {
		return imgnum;
	}
	public void setImgnum(int imgnum) {
		this.imgnum = imgnum;
	}
	public String getImgtype() {
		return imgtype;
	}
	public void setImgtype(String imgtype) {
		this.imgtype = imgtype;
	}
	public String getOrgname() {
		return orgname;
	}
	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}
	public String getSavename() {
		return savename;
	}
	public void setSavename(String savename) {
		this.savename = savename;
	}
}
