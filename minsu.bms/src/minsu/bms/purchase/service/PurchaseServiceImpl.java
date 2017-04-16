package minsu.bms.purchase.service;

import java.util.List;

import minsu.bms.purchase.dao.PurchaseDao;
import minsu.bms.purchase.domain.Purchase;
import minsu.bms.query.domain.Query;

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
	
	public List<Purchase> findPurchaseId(String userId){
		List<Purchase> purchase = (List<Purchase>)purchaseDao.getPurchaseId(userId);
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
}
