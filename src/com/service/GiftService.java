package com.service;
import com.dao.GiftDao;

public class GiftService {
	
	GiftDao gdao = new GiftDao();
	
	public String[][] getGifts() {
		String[][] gifts = gdao.getGifts();
		return gifts;
	}
	
	public String[] hottestGift() {
		String[] hottest = gdao.getHottest();
		return hottest;
	}

	public String[][] getSelectGifts(String tag) {
		String[][] selectGifts = gdao.selectGifts(tag);
		return selectGifts;
	}

	public boolean hasPraise(String gName, String uName) {
		boolean hasPraise = gdao.hasPraise(gName,uName);		
		return hasPraise;
	}

	public void praise(String gName, String uName) {
		// TODO Auto-generated method stub
		gdao.praise(gName, uName);	
	}
}
