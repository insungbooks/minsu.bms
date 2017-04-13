package minsu.bms.delivery.dao;

import java.util.List;

import minsu.bms.delivery.dao.mapper.DeliveryMapper;
import minsu.bms.delivery.domain.Delivery;

public class DeliveryDaoImpl implements DeliveryDao{
	DeliveryMapper deliveryMapper;
	
	public DeliveryDaoImpl(){}
	
	public DeliveryDaoImpl(DeliveryMapper deliveryMapper){
		this.deliveryMapper = deliveryMapper;
	}
	
	public List<Delivery> deliveryList() {
		return deliveryMapper.deliveryList();
	}
	public Delivery getDelivery(int deliveryNum) {
		return deliveryMapper.getDelivery(deliveryNum);
	}
	public int addDelivery(Delivery delivery){
		return deliveryMapper.addDelivery(delivery);
	}
	public int updateDelivery(Delivery delivery) {
		return deliveryMapper.updateDelivery(delivery);
	}
	public int delDelivery(int deliveryNum) {
		return deliveryMapper.delDelivery(deliveryNum);
	}
}
