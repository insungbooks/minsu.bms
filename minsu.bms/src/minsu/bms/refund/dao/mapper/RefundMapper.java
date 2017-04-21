package minsu.bms.refund.dao.mapper;

import java.util.List;

import minsu.bms.refund.domain.Refund;

public interface RefundMapper {
	List<Refund> refundList(String userId);
	Refund getRefund(int orderNum);
	int addRefund(Refund refund);
	int updateRefund(Refund refund);
	int delRefund(int refundNum);
}

