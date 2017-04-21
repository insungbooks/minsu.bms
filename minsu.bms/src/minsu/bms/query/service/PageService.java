package minsu.bms.query.service;

import minsu.bms.query.domain.Page;


public interface PageService {
	Page getPage();
	boolean isPrev();
	boolean isNext();
	int getStartPage();
	int getEndPage();
}
