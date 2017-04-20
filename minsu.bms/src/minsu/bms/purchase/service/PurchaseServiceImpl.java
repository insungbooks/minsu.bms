package minsu.bms.purchase.service;

import java.util.Calendar;
import java.util.List;

import minsu.bms.purchase.dao.PurchaseDao;
import minsu.bms.purchase.domain.Purchase;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class PurchaseServiceImpl implements PurchaseService{
	private PurchaseDao purchaseDao;
	
	public PurchaseServiceImpl(PurchaseDao purchaseDao) {
		this.purchaseDao = purchaseDao;
	}
	public List<Purchase> listPurchases(){
		return purchaseDao.purchaseList();
	}
	public List<Purchase> findPurchaseList(int orderNum){
		return purchaseDao.getPurchaseList(orderNum);
	}
	public List<Purchase> findPurchaseBook(String bookCode){
		return purchaseDao.getPurchaseBook(bookCode);
	}
	
	public List<Purchase> findPurchaseId(String userId){
		List<Purchase> purchase = (List<Purchase>)purchaseDao.getPurchaseId(userId);
			return purchase;
	}
	public List<Purchase> findPurchaseSearch(String date1, String date2){
		List<Purchase> purchase = (List<Purchase>)purchaseDao.getPurchaseSearch(date1, date2);
		return purchase;
	}
	
	public Purchase findPurchase(int orderNum){
		return purchaseDao.getPurchase(orderNum);
	}
	public Purchase findBook(String bookCode){
		return purchaseDao.getBook(bookCode);
	}
	
	public boolean addPurchase(Purchase purchase){
		return purchaseDao.addPurchase(purchase)>0;
	}
	
	public boolean modifyPurchase(Purchase purchase){
		return purchaseDao.updatePurchase(purchase)>0;
	}
	public boolean modifyRefund(Purchase purchase){
		return purchaseDao.updateRefund(purchase)>0;
	}
	
	public boolean deletePurchase(int orderNum){
		return purchaseDao.delPurchase(orderNum)>0;
	}
	
	public static String getCurrentDate() {

        String returnStr = "";
        DecimalFormat df = new DecimalFormat("00");
        Calendar cal = Calendar.getInstance();
        int year = cal.get(Calendar.YEAR);
        int month = cal.get(Calendar.MONTH) + 1;
        int day = cal.get(Calendar.DAY_OF_MONTH);
        String monthStr = ((month < 10) ? "0" : "") + month;
        String dayStr = ((day < 10) ? "0" : "") + day;
        returnStr = year + "-" + monthStr + "-" + dayStr;
        return returnStr;

    }
	
	public static String getDate(int addDate){
	     DecimalFormat df = new DecimalFormat("00");
	     Calendar currentCalendar = Calendar.getInstance();
	     
	     currentCalendar.add(currentCalendar.DATE, addDate);
	     
	     String strYear   = Integer.toString(currentCalendar.get(Calendar.YEAR));
	     String strMonth  = df.format(currentCalendar.get(Calendar.MONTH) + 1);
	     String strDay   = df.format(currentCalendar.get(Calendar.DATE));
	     String strDate = strYear + strMonth + strDay;
	        
	     return strDate;
	    }

}
