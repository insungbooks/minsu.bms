package minsu.bms.writer.dao;

import java.util.List;

import minsu.bms.config.Configuration;
import minsu.bms.writer.dao.mapper.WriterMapper;
import minsu.bms.writer.domain.Writer;

public class WriterDaoImpl implements WriterDao{
	WriterMapper writerMapper;
	
	public WriterDaoImpl(){
		this.writerMapper=Configuration.getMapper(WriterMapper.class);
	}
	
	public List<Writer> getWriters(){
		return writerMapper.getWriters();
	}
}
