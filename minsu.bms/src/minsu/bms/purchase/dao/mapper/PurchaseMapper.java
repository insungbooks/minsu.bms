package minsu.bms.purchase.dao.mapper;

import java.util.List;

import minsu.bms.purchase.domain.Purchase;

public interface PurchaseMapper {
	List<Purchase> purchaseList();
	Purchase getPurchase(int orderNum);
	List<Purchase> getPurchaseList(int orderNum);
	List<Purchase> getPurchaseId(String userId);
	Purchase getBook(String bookCode);
	int addPurchase(Purchase purchase);
	int updatePurchase(Purchase purchase);
	int updateRefund(Purchase purchase);
	int delPurchase(int orderNum);
}
