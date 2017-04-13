package minsu.bms.purchase.domain;

public class Purchase {
	private int orderNum; //주문번호
	private int deliveryNum;//배송번호
	private int refundNum;//환불번호
	private String userId;//아이디
	private String bookCode;//책코드
	private String orderDate;//주문날짜
	private String destination;//도착주소
	private int orderCount;//주문수량
	
	public Purchase(){}
	
	public Purchase(int orderNum, int deliveryNum, int refundNum, String userId, String bookCode, String orderDate, String destination, int orderCount){
		this.orderNum=orderNum;
		this.deliveryNum=deliveryNum;
		this.refundNum=refundNum;
		this.userId=userId;
		this.bookCode=bookCode;
		this.orderDate=orderDate;
		this.destination=destination;
		this.orderCount=orderCount;
	}

	public int getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}

	public int getDeliveryNum() {
		return deliveryNum;
	}

	public void setDeliveryNum(int deliveryNum) {
		this.deliveryNum = deliveryNum;
	}

	public int getRefundNum() {
		return refundNum;
	}

	public void setRefundNum(int refundNum) {
		this.refundNum = refundNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getBookCode() {
		return bookCode;
	}

	public void setBookCode(String bookCode) {
		this.bookCode = bookCode;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public int getOrderCount() {
		return orderCount;
	}

	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}
	
	
}
