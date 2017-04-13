package minsu.bms.purchase.service;

import java.util.List;

import minsu.bms.purchase.dao.PurchaseDao;
import minsu.bms.purchase.domain.Purchase;

public class PurchaseServiceImpl implements PurchaseService{
	private PurchaseDao purchaseDao;
	
	public PurchaseServiceImpl(PurchaseDao purchaseDao) {
		this.purchaseDao = purchaseDao;
	}
	public List<Purchase> listPurchases(){
		return purchaseDao.purchaseList();
	}
	
	public Purchase findPurchase(int orderNum){
		return purchaseDao.getPurchase(orderNum);
	}
	
	public boolean addPurchase(Purchase purchase){
		return purchaseDao.addPurchase(purchase)>0;
	}
	
	public boolean modifyPurchase(Purchase purchase){
		return purchaseDao.updatePurchase(purchase)>0;
	}
	
	public boolean deletePurchase(int orderNum){
		return purchaseDao.delPurchase(orderNum)>0;
	}
}
