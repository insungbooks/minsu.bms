package minsu.bms.delivery.dao;

import java.util.List;

import minsu.bms.delivery.domain.Delivery;

public interface DeliveryDao {
	List<Delivery> deliveryList();
	Delivery getDelivery(int deliveryNum);
	int addDelivery(Delivery delivery);
	int updateDelivery(Delivery delivery);
	int updateDeliveryNow(Delivery delivery);
	int delDelivery(int deliveryNum);
}
