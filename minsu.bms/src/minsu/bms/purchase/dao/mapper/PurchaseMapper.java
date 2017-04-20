package minsu.bms.purchase.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import minsu.bms.purchase.domain.Purchase;

public interface PurchaseMapper {
	List<Purchase> purchaseList();
	Purchase getPurchase(int orderNum);
	List<Purchase> getPurchaseList(int orderNum);
	List<Purchase> getPurchaseBook(String bookCode);
	List<Purchase> getPurchaseId(String userId);
	List<Purchase> getPurchaseSearch(@Param("date1")String date1, @Param("date2")String date2);
	Purchase getBook(String bookCode);
	int addPurchase(Purchase purchase);
	int updatePurchase(Purchase purchase);
	int updateRefund(Purchase purchase);
	int delPurchase(int orderNum);
}
