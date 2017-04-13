package minsu.bms.refund.service;

import java.util.List;

import minsu.bms.refund.dao.RefundDao;
import minsu.bms.refund.domain.Refund;

public class RefundServiceImpl implements RefundService{
private RefundDao refundDao;
	
	public RefundServiceImpl(RefundDao refundDao) {
		this.refundDao = refundDao;
	}
	public List<Refund> listRefunds(){
		return refundDao.refundList();
	}
	
	public Refund findRefund(int refundNum){
		return refundDao.getRefund(refundNum);
	}
	
	public boolean addRefund(Refund refund){
		return refundDao.addRefund(refund)>0;
	}
	
	public boolean modifyRefund(Refund refund){
		return refundDao.updateRefund(refund)>0;
	}
	
	public boolean deleteRefund(int refundNum){
		return refundDao.delRefund(refundNum)>0;
	}
}
