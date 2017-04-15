package minsu.bms.basket.service;

import java.util.List;

import minsu.bms.basket.domain.Basket;

public interface BasketService {
	List<Basket> listBaskets(String userId);
	Basket findBook(String userId);
	boolean plusBasket(String bookCode);
	boolean deleteBasket(String bookCode);
}
