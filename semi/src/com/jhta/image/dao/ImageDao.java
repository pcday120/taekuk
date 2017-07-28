package com.jhta.image.dao;

import com.jhta.bal.vo.BalVo;
import com.jhta.image.vo.ImageVo;
import com.jhta.imagebal.vo.ImageBalVo;

import jdbc.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;

public class ImageDao {
	public int insert(ImageVo vo){
		Connection con=null;
		PreparedStatement pstmt=null;
		String sql="insert into image values(?,?,?,?,?)";
		try{
			con=DBConnection.getConn();
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, vo.getImgnum());
			pstmt.setString(2, vo.getImgtype());
			pstmt.setString(3, vo.getOrgname());
			pstmt.setString(4, vo.getSavename());
			pstmt.setInt(5, vo.getGnum());
			return pstmt.executeUpdate();
		}catch(SQLException se){
			System.out.println(se.getMessage());
			return -1;
		}finally{
			DBConnection.close(con,pstmt,null);
		}
	}
	public ArrayList<ImageBalVo> getList(int startRow,int endRow,String keyword){
		ArrayList<ImageBalVo> list=new ArrayList<>();
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			con=DBConnection.getConn();
			if(keyword.equals("")){
				String sql="select * from (select a.*, rownum rnum from(select b.gnum,conname,showtitle,loc,place,price,startdate,closedate,age,singer,imgnum,imgtype,orgname,savename from image i,bal b where i.gnum=b.gnum and imgtype='search' order by i.gnum desc)a)where rnum>=? and rnum <=?";
				pstmt=con.prepareStatement(sql);
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
				rs=pstmt.executeQuery();
			}else{
				String sql="select * from (select a.*, rownum rnum from(select b.gnum,conname,showtitle,loc,place,price,startdate,closedate,age,singer,imgnum,imgtype,orgname,savename from image i,bal b where i.gnum=b.gnum and imgtype='search' and showtitle like '%'||?||'%' or singer like '%'||?||'%'order by i.gnum desc)a)where rnum>=? and rnum <=?";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, keyword);
				pstmt.setString(2, keyword);
				pstmt.setInt(3, startRow);
				pstmt.setInt(4, endRow);
				rs=pstmt.executeQuery();
			}
			while(rs.next()){
				int gnum=rs.getInt("gnum");
				String conname=rs.getString("conname");
				String showtitle=rs.getString("showtitle");
				String loc=rs.getString("loc");
				String place=rs.getString("place");
				int price=rs.getInt("price");
				String startdate=rs.getString("startdate");
				String closedate=rs.getString("closedate");
				int age=rs.getInt("age");
				String singer=rs.getString("singer");
				int imgnum=rs.getInt("imgnum");
				String imgtype=rs.getString("imgtype");
				String orgname=rs.getString("orgname");
				String savename=rs.getString("savename");
				int gnum1=0;
				
				list.add(new ImageBalVo(gnum, conname, showtitle, loc, place, price, startdate, closedate, age, singer, imgnum, imgtype, orgname, savename));
			}
			return list;
		}catch(SQLException se){
			System.out.println(se.getMessage());
			return null;
		}finally{
			DBConnection.close(con,pstmt,rs);
		}
	}
	public int getCount(String keyword){
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			con=DBConnection.getConn();
			if(keyword.equals("")){
				String sql="select NVL(count(b.gnum),0) from image i,bal b where i.gnum=b.gnum";
				pstmt=con.prepareStatement(sql);
				rs=pstmt.executeQuery();
			}else{
				String sql="select NVL(count(b.gnum),0) from image i,bal b where i.gnum=b.gnum and showtitle like '%'?'%' or singer like '%'?'%'";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, keyword);
				rs=pstmt.executeQuery();
			}
			rs.next();
			int countNum=rs.getInt(1);
			return countNum;
		}catch(SQLException se){
			se.getMessage();
			return -1;
		}finally{
			DBConnection.close(con,pstmt,rs);
		}
	}
	public ImageBalVo getInfo(int gnum){
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		System.out.println(gnum);
		try{
			con=DBConnection.getConn();
			String sql="select * from bal b,image i where b.gnum=i.gnum and b.gnum=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, gnum);
			rs=pstmt.executeQuery();
			if(rs.next()){
				gnum=rs.getInt("gnum");
				String conname=rs.getString("conname");
				String showtitle=rs.getString("showtitle");
				String loc=rs.getString("loc");
				String place=rs.getString("place");
				int price=rs.getInt("price");
				String startdate=rs.getString("startdate");
				String closedate=rs.getString("closedate");
				int age=rs.getInt("age");
				String singer=rs.getString("singer");
				int imgnum=rs.getInt("imgnum");
				String imgtype=rs.getString("imgtype");
				String orgname=rs.getString("orgname");
				String savename=rs.getString("savename");
				int gnum1=0;
				ImageBalVo vo=new ImageBalVo(gnum, conname, showtitle, loc, place, price, startdate, closedate, age, singer, imgnum, imgtype, orgname, savename);
				return vo;
			}else{
				return null;
			}
		}catch(SQLException se){
			System.out.println(se.getMessage());
			return null;
		}finally{
			DBConnection.close(con, pstmt, rs);
		}
	}
	
	public ImageBalVo getInfo2(int gnum){
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		System.out.println(gnum);
		try{
			con=DBConnection.getConn();
			String sql="select * from bal b,image i where b.gnum=i.gnum and b.gnum=? and i.imgtype='main'";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, gnum);
			rs=pstmt.executeQuery();
			if(rs.next()){
				gnum=rs.getInt("gnum");
				String conname=rs.getString("conname");
				String showtitle=rs.getString("showtitle");
				String loc=rs.getString("loc");
				String place=rs.getString("place");
				int price=rs.getInt("price");
				String startdate=rs.getString("startdate");
				String closedate=rs.getString("closedate");
				int age=rs.getInt("age");
				String singer=rs.getString("singer");
				int imgnum=rs.getInt("imgnum");
				String imgtype=rs.getString("imgtype");
				String orgname=rs.getString("orgname");
				String savename=rs.getString("savename");
				int gnum1=0;
				ImageBalVo vo=new ImageBalVo(gnum, conname, showtitle, loc, place, price, startdate, closedate, age, singer, imgnum, imgtype, orgname, savename);
				return vo;
			}else{
				return null;
			}
		}catch(SQLException se){
			System.out.println(se.getMessage());
			return null;
		}finally{
			DBConnection.close(con, pstmt, rs);
		}
	}
	
}
