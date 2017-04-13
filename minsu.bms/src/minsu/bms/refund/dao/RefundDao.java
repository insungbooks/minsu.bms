package minsu.bms.refund.dao;

import java.util.List;

import minsu.bms.refund.domain.Refund;

public interface RefundDao {
	List<Refund> refundList();
	Refund getRefund(int refundNum);
	int addRefund(Refund refund);
	int updateRefund(Refund refund);
	int delRefund(int refundNum);
}
