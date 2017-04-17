package minsu.bms.purchase.dao;

import java.util.List;

import minsu.bms.purchase.domain.Purchase;
import minsu.bms.query.domain.Query;

public interface PurchaseDao {
	List<Purchase> purchaseList();
	Purchase getPurchase(int orderNum);
	List<Purchase> getPurchaseList(int orderNum);
	List<Purchase> getPurchaseBook(String bookCode);
	List<Purchase> getPurchaseId(String userId);
	Purchase getBook(String bookCode);
	int addPurchase(Purchase purchase);
	int updatePurchase(Purchase purchase);
	int updateRefund(Purchase purchase);
	int delPurchase(int orderNum);
}
