package minsu.bms.paging.dao.mapper;

public interface PageMapper {
	int getTotRowCntBook();
	int getTotRowCntQuery(String userId);
	int getTotRowCntUser();
	int getTotRowCntRefund(String userId);
	int getTotRowCntOrder(String userId);
}
