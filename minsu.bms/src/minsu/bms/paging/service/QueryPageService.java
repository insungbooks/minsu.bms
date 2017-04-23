package minsu.bms.paging.service;

import minsu.bms.paging.domain.Page;

public interface QueryPageService {
	Page getPage();
	boolean isPrev();
	boolean isNext();
	int getStartPage();
	int getEndPage();
}
