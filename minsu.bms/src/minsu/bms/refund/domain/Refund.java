package minsu.bms.refund.domain;

public class Refund {
	private int refundNum;//환불번호
	private String refundNow;//환불상태
	
	public Refund(){}
	
	public Refund(int refundNum, String refundNow){
		this.refundNum=refundNum;
		this.refundNow=refundNow;
	}

	public int getRefundNum() {
		return refundNum;
	}

	public void setRefundNum(int refundNum) {
		this.refundNum = refundNum;
	}

	public String getRefundNow() {
		return refundNow;
	}

	public void setRefundNow(String refundNow) {
		this.refundNow = refundNow;
	}
	
}
