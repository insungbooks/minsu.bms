package minsu.bms.bookmanagement.dao;

import java.util.List;

import minsu.bms.bookmanagement.dao.mapper.BookMapper;
import minsu.bms.bookmanagement.domain.Book;
import minsu.bms.paging.domain.Page;

public class BookDaoImpl implements BookDao {
	BookMapper bookMapper;
	
	public BookDaoImpl(){}
	
	public BookDaoImpl(BookMapper bookMapper){
		this.bookMapper = bookMapper;
	}
	
	public List<Book> bookList() {
		return bookMapper.bookList();
	}
	public List<Book> bookList1(Page page) {
		return bookMapper.bookList1(page);
	}
	public Book getBook(String bookCode) {
		return bookMapper.getBook(bookCode);
	}
	public int addBook(Book book){
		return bookMapper.addBook(book);
	}
	public int updateBook(Book book) {
		return bookMapper.updateBook(book);
	}
	public int delBook(String bookCode) {
		return bookMapper.delBook(bookCode);
	}
}
