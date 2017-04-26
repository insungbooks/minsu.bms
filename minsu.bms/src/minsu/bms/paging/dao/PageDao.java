package minsu.bms.paging.dao;

public interface PageDao {
	int getTotRowCntBook();
	int getTotRowCntQuery(String userId);
	int getTotRowCntUser();
	int getTotRowCntRefund();
	int getTotRowCntOrder();
}
