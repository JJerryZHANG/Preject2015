package com.dao;

import java.sql.SQLException;

public class GiftDao extends DBconn{

	public String[][] getGifts() {

		String[][] gifts = new String[8][5];
		try {
			String sql = "select * from gift order by hot desc limit 8";
			rs = SqlQuery(sql);
			int i = 0;
			while(rs.next()){
				gifts[i][0] = rs.getString("name");
				gifts[i][1] = rs.getString("pic");
				gifts[i][2] = rs.getString("link");
				gifts[i][3] = rs.getString("about");
				gifts[i][4] = rs.getString("hot");
				i++;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return gifts;
	}

	public String[] getHottest() {
		String[] hottest = new String[5];
		try {
			String sql = "select * from gift order by hot desc limit 1";
			rs = SqlQuery(sql);
			if(rs.next()){
				hottest[0] = rs.getString("name");
				hottest[1] = rs.getString("pic");
				hottest[2] = rs.getString("link");
				hottest[3] = rs.getString("about");
				hottest[4] = rs.getString("hot");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return hottest;
	}

	public String[][] selectGifts(String tag) {
		String[][] select = new String[8][5];
		try{
			String sql = "select gift.name,pic,link,about,hot from gift, giftTags where gift.name=giftTags.name and (tag1="+"'"+tag+"'"+" or tag2="+"'"+tag+"'"+" or tag3="+"'"+tag+"'"+") order by hot desc limit 8";
			System.out.println(sql);
			rs = SqlQuery(sql);
			int i = 0;
			while(rs.next()){
				select[i][0] = rs.getString("name");
				select[i][1] = rs.getString("pic");
				select[i][2] = rs.getString("link");
				select[i][3] = rs.getString("about");
				select[i][4] = rs.getString("hot");
				i++;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return select;
	}

	public boolean hasPraise(String gName, String uName) {
		boolean has = false;
		try {
			String sql="select * from giftPraise where gName='"+gName+"' and uName='"+uName+"'";
			System.out.println(sql);
			rs = SqlQuery(sql);
			if(rs.next()){
				has = true; //has Praised
			}			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return has;
	}

	public void praise(String gName, String uName) {
		// TODO Auto-generated method stub
		try {
			String sql1= "insert into giftPraise(gName,uName) value ('"+gName+"','"+uName+"')";
			SqlExecute(sql1);
			String sql2 = "update gift set hot = hot+1 where name = '"+gName+"'";
			System.out.println(sql2);
			SqlExecute(sql2);
		} finally{
			closeAll();					
		}
		
	}

}
