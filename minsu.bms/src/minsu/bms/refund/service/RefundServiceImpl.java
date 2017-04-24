package minsu.bms.refund.service;

import java.util.ArrayList;
import java.util.List;

import minsu.bms.paging.domain.Page;
import minsu.bms.query.domain.Query;
import minsu.bms.refund.dao.RefundDao;
import minsu.bms.refund.domain.Refund;

public class RefundServiceImpl implements RefundService{
private RefundDao refundDao;
	
	public RefundServiceImpl(RefundDao refundDao) {
		this.refundDao = refundDao;
	}
	public List<Refund> listRefunds(String userId){
		return refundDao.refundList(userId);
	}
	public List<Refund> listRefundPage(String userId,Page page){
		List<Refund> RefundList= new ArrayList<Refund>();
		 List<Refund> RefundLists =refundDao.refundListPage(page);
		 for(Refund Refund :RefundLists){
			 if(Refund.getUserId().equals(userId)){
				 RefundList.add(Refund);
			 } 
		}return RefundList;
	}
	
	public Refund findRefund(int orderNum){
		return refundDao.getRefund(orderNum);
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
