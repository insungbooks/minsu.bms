package minsu.bms.basket.dao.mapper;

import java.util.List;

import minsu.bms.basket.domain.Basket;

public interface BasketMapper {
	List<Basket> getBaskets(String userId); //장바구니 정보 목록
	Basket getBasket(int basketNum);
	int addBasket(Basket basket); //장바구니안에 책을 집어넣는다
	int delBasket(Basket basket); //장바구니 안에 책을 빼낸다.
}
