package minsu.bms.purchase.dao;

import java.util.List;

import minsu.bms.purchase.domain.Purchase;

public interface PurchaseDao {
	List<Purchase> purchaseList();
	Purchase getPurchase(int orderNum);
	Purchase getBook(String bookCode);
	int addPurchase(Purchase purchase);
	int updatePurchase(Purchase purchase);
	int delPurchase(int orderNum);
}
