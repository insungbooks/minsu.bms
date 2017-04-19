package minsu.bms.basket.dao;

import java.util.List;

import minsu.bms.basket.domain.Basket;

public interface BasketDao {
	List<Basket> getBaskets(String userId);
	List<Basket> getBasket(String basketNum);
	int addBasket(Basket basket);
	int delBasket(Basket basket);
}