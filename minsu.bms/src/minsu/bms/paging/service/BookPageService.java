package minsu.bms.paging.service;

import minsu.bms.paging.domain.Page;

public interface BookPageService {
	Page getPage();
	boolean isPrev();
	boolean isNext();
	int getStartPage();
	int getEndPage();
}
