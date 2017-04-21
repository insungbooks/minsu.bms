package minsu.bms.query.dao;

import minsu.bms.config.Configuration;
import minsu.bms.query.dao.mapper.PageMapper;



public class PageDaoImpl implements PageDao {
	private PageMapper pageMapper;
	
	public PageDaoImpl() {
		this.pageMapper = Configuration.getMapper(PageMapper.class);
	}
	
	public int getTotRowCnt() {
		return pageMapper.getTotRowCnt();
	}
}
