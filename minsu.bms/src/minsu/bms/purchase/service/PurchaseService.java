package minsu.bms.purchase.service;

import java.util.List;

import minsu.bms.purchase.domain.Purchase;

public interface PurchaseService {
	List<Purchase> listPurchases();
	Purchase findPurchase(int orderNum);
	boolean addPurchase(Purchase purchase);
	boolean modifyPurchase(Purchase purchase);
	boolean deletePurchase(int orderNum);
}
