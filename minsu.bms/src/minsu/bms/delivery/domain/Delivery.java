package minsu.bms.delivery.domain;

public class Delivery {
	private int deliveryNum;//배송번호
	private String deliveryNow;//배송상태

	public Delivery(){}
	
	public Delivery(int deliveryNum, String deliveryNow){
		this.deliveryNum=deliveryNum;
		this.deliveryNow=deliveryNow;
	}

	public int getDeliveryNum() {
		return deliveryNum;
	}

	public void setDeliveryNum(int deliveryNum) {
		this.deliveryNum = deliveryNum;
	}

	public String getDeliveryNow() {
		return deliveryNow;
	}

	public void setDeliveryNow(String deliveryNow) {
		this.deliveryNow = deliveryNow;
	}
	
}
