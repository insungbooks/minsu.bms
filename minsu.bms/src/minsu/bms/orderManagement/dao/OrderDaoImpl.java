package minsu.bms.orderManagement.dao;

import java.util.List;

import minsu.bms.orderManagement.dao.mapper.OrderMapper;
import minsu.bms.orderManagement.domain.Order;

public class OrderDaoImpl implements OrderDao{
	OrderMapper orderMapper;
	
	public OrderDaoImpl(){}
	
	public OrderDaoImpl(OrderMapper orderMapper){
		this.orderMapper = orderMapper;
	}
	
	public List<Order> orderList() {
		return orderMapper.orderList();
	}
	
	public List<Order> searchDates(String registrationDate1, String registrationDate2){
		return orderMapper.searchDates(registrationDate1,registrationDate2);
	}
}
