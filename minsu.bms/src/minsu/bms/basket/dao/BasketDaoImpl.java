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
	
	public List<Basket> getBasket(String basketNum){
		return basketMapper.getBasket(basketNum);
	}
	
	public int addBasket(Basket basket){
		return basketMapper.addBasket(basket);
	}
	
	public int delBasket(Basket basket){
		return basketMapper.delBasket(basket);
	}
}
