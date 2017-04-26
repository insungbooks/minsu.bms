package minsu.bms.writer.service;

import java.util.List;

import minsu.bms.writer.dao.WriterDao;
import minsu.bms.writer.dao.WriterDaoImpl;
import minsu.bms.writer.domain.Writer;


public class WriterServiceImpl implements WriterService{
	private WriterDao writerDao;
	
	public WriterServiceImpl(){
		this.writerDao=new WriterDaoImpl();
	}
	
	public List<Writer> listWriters(){
		return writerDao.getWriters();
	}
}
