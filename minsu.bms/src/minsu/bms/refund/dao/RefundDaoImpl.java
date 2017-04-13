package minsu.bms.refund.dao;

import java.util.List;

import minsu.bms.refund.dao.mapper.RefundMapper;
import minsu.bms.refund.domain.Refund;

public class RefundDaoImpl implements RefundDao{
	RefundMapper refundMapper;
	
	public RefundDaoImpl(){}
	
	public RefundDaoImpl(RefundMapper refundMapper){
		this.refundMapper = refundMapper;
	}
	
	public List<Refund> refundList() {
		return refundMapper.refundList();
	}
	public Refund getRefund(int refundNum) {
		return refundMapper.getRefund(refundNum);
	}
	public int addRefund(Refund refund){
		return refundMapper.addRefund(refund);
	}
	public int updateRefund(Refund refund) {
		return refundMapper.updateRefund(refund);
	}
	public int delRefund(int refundNum) {
		return refundMapper.delRefund(refundNum);
	}

}
