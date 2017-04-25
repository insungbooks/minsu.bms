package minsu.bms.refund.dao.mapper;

import java.util.List;
import minsu.bms.paging.domain.Page;
import minsu.bms.refund.domain.Refund;

public interface RefundMapper {
	List<Refund> refundList(String userId);
	List<Refund> refundListPage(Page page);
	Refund getRefund(int orderNum);
	int addRefund(Refund refund);
	int updateRefund(Refund refund);
	int delRefund(int refundNum);
}

