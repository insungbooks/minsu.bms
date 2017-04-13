package minsu.bms.delivery.service;

import java.util.List;

import minsu.bms.delivery.domain.Delivery;

public interface DeliveryService {
	List<Delivery> listDeliverys();
	Delivery findDelivery(int deliveryNum);
	boolean addDelivery(Delivery delivery);
	boolean modifyDelivery(Delivery delivery);
	boolean deleteDelivery(int deliveryNum);
}
