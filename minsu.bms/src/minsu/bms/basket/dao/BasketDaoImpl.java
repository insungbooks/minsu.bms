package minsu.bms.basket.dao;

import java.util.List;

import minsu.bms.basket.dao.mapper.BasketMapper;
import minsu.bms.basket.domain.Basket;

public class BasketDaoImpl implements BasketDao{
	private BasketMapper basketMapper;
	
	public BasketDaoImpl(){}
	
	public BasketDaoImpl(BasketMapper basketMapper){
		this.basketMapper = basketMapper;
	}
	
	public List<Basket> getBaskets(String userId){
		return basketMapper.getBaskets(userId);
	}
	
	public Basket getBook(String bookCode){
		return basketMapper.getBook(bookCode);
	}
	
	public int addBasket(Basket basket){
		return basketMapper.addBasket(basket);
	}
	
	public int delBasket(String bookCode){
		return basketMapper.delBasket(bookCode);
	}
}
