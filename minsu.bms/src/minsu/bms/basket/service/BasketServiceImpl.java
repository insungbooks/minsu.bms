package minsu.bms.basket.service;

import java.util.List;

import minsu.bms.basket.dao.BasketDao;
import minsu.bms.basket.domain.Basket;

public class BasketServiceImpl implements BasketService{
	private BasketDao basketDao;
	
	public BasketServiceImpl(BasketDao basketDao){
		this.basketDao = basketDao;
	}
	
	public List<Basket> listBaskets(String userId){
		return basketDao.getBaskets(userId);
	}
	
	public Basket findBook(String userId){
		return basketDao.getBook(userId);
	}

	public boolean plusBasket(String bookCode){
		return basketDao.addBasket(bookCode)>0;
	}
	
	public boolean deleteBasket(String bookCode){
		return basketDao.delBasket(bookCode)>0;
	}
}
