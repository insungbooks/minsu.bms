package minsu.bms.basket.dao;

import java.util.List;

import minsu.bms.basket.domain.Basket;

public interface BasketDao {
	List<Basket> getBaskets(String userId);
	Basket getBook(String bookCode);
	int addBasket(String bookCode);
	int delBasket(String bookCode);
}