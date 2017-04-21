package minsu.bms.paging.dao;

import minsu.bms.config.Configuration;
import minsu.bms.paging.dao.mapper.PageMapper;

public class PageDaoImpl implements PageDao {
	private PageMapper pageMapper;
	
	public PageDaoImpl() {
		this.pageMapper = Configuration.getMapper(PageMapper.class);
	}
	
	public int getTotRowCnt() {
		return pageMapper.getTotRowCnt();
	}
}
