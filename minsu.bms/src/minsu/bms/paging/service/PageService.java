package minsu.bms.paging.service;

import minsu.bms.paging.domain.Page;

public interface PageService {
	Page getPage();
	boolean isPrev();
	boolean isNext();
	int getStartPage();
	int getEndPage();
}
