package minsu.bms.paging.dao;

import minsu.bms.config.Configuration;
import minsu.bms.paging.dao.mapper.PageMapper;

public class PageDaoImpl implements PageDao {
	private PageMapper pageMapper;
	
	public PageDaoImpl() {
		this.pageMapper = Configuration.getMapper(PageMapper.class);
	}
	
	public int getTotRowCntBook() {
		return pageMapper.getTotRowCntBook();
	}
	public int getTotRowCntQuery(String userId) {
		return pageMapper.getTotRowCntQuery(userId);
	}
	public int getTotRowCntUser() {
		return pageMapper.getTotRowCntUser();
	}
	public int getTotRowCntRefund(String userId) {
		return pageMapper.getTotRowCntRefund(userId);
	}
	public int getTotRowCntOrder(String userId) {
		return pageMapper.getTotRowCntOrder(userId);
	}
	
	
}
