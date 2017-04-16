package minsu.bms.purchase.service;

import java.util.List;

import minsu.bms.purchase.domain.Purchase;
import minsu.bms.query.domain.Query;

public interface PurchaseService {
	List<Purchase> listPurchases();
	Purchase findPurchase(int orderNum);
	List<Purchase> findPurchaseList(int orderNum);
	List<Purchase> findPurchaseId(String userId);
	Purchase findBook(String bookCode);
	boolean addPurchase(Purchase purchase);
	boolean modifyPurchase(Purchase purchase);
	boolean modifyRefund(Purchase purchase);
	boolean deletePurchase(int orderNum);
}
