package minsu.bms.purchase.dao;

import java.util.List;

import minsu.bms.purchase.dao.mapper.PurchaseMapper;
import minsu.bms.purchase.domain.Purchase;


public class PurchaseDaoImpl implements PurchaseDao{

	PurchaseMapper purchaseMapper;
	
	public PurchaseDaoImpl(){}
	
	public PurchaseDaoImpl(PurchaseMapper purchaseMapper){
		this.purchaseMapper = purchaseMapper;
	}
	
	public List<Purchase> purchaseList() {
		return purchaseMapper.purchaseList();
	}
	public Purchase getPurchase(int orderNum) {
		return purchaseMapper.getPurchase(orderNum);
	}
	public Purchase getBook(String bookCode) {
		return purchaseMapper.getBook(bookCode);
	}
	public int addPurchase(Purchase purchase){
		return purchaseMapper.addPurchase(purchase);
	}
	public int updatePurchase(Purchase purchase) {
		return purchaseMapper.updatePurchase(purchase);
	}
	public int delPurchase(int orderNum) {
		return purchaseMapper.delPurchase(orderNum);
	}

}
