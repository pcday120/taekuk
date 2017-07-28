package com.jhta.image.vo;

public class ImageVo {
	private int imgnum;
	private String imgtype;
	private String orgname;
	private String savename;
	private int gnum;
	public ImageVo(){}
	public ImageVo(int imgnum, String imgtype, String orgname, String savename, int gnum) {
		this.imgnum = imgnum;
		this.imgtype = imgtype;
		this.orgname = orgname;
		this.savename = savename;
		this.gnum = gnum;
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

	public int getGnum() {
		return gnum;
	}

	public void setGnum(int gnum) {
		this.gnum = gnum;
	}
}
