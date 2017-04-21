package minsu.bms.orderManagement.service;

import java.util.List;

import minsu.bms.orderManagement.domain.Order;

public interface OrderService {
	List<Order> orderList();
	
	List<Order> searchDates(String registrationDate1, String registrationDate2);
}
