package minsu.bms.basket.service;

import java.util.List;

import minsu.bms.basket.domain.Basket;

public interface BasketService {
	List<Basket> listBaskets(String userId);
	Basket findBasket(int basketNum);
	boolean plusBasket(Basket basket);
	boolean deleteBasket(Basket basket);
}
