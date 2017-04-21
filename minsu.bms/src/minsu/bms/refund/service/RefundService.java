package minsu.bms.refund.service;

import java.util.List;

import minsu.bms.paging.domain.Page;
import minsu.bms.refund.domain.Refund;

public interface RefundService {
	List<Refund> listRefunds(String userId);
	List<Refund> listRefundPage(String userId,Page page);
	Refund findRefund(int orderNum);
	boolean addRefund(Refund refund);
	boolean modifyRefund(Refund refund);
	boolean deleteRefund(int refundNum);
}
