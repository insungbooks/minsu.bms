package minsu.bms.paging.service;

import minsu.bms.paging.domain.Page;

public interface OrderPageService {
	Page getPage();
	boolean isPrev();
	boolean isNext();
	int getStartPage();
	int getEndPage();
}
