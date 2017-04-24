package minsu.bms.basket.dao;

import java.util.List;

import minsu.bms.basket.domain.Basket;

public interface BasketDao {
	List<Basket> getBaskets(String userId);
	Basket getBasket(int basketNum);
	int addBasket(Basket basket);
	int updateBasket(Basket basket);
	int delBasket(int basketNum);
}