package minsu.bms.bookmanagement.service;

import java.util.List;

import minsu.bms.bookmanagement.dao.BookDao;
import minsu.bms.bookmanagement.domain.Book;
import minsu.bms.paging.domain.Page;

public class BookServiceImpl implements BookService {
	private BookDao bookDao;
	
	public BookServiceImpl(BookDao bookDao) {
		this.bookDao = bookDao;
	}
	
	public List<Book> listBooks(){
		return bookDao.bookList();
	}
	
	public List<Book> listBooks1(Page page){
		return bookDao.bookList1(page);
	}
	
	public Book findBook(String bookCode){
		return bookDao.getBook(bookCode);
	}
	
	public boolean addBook(Book book){
		return bookDao.addBook(book)>0;
	}
	
	public boolean modifyBook(Book book){
		return bookDao.updateBook(book)>0;
	}
	
	public boolean deleteBook(String bookCode){
		return bookDao.delBook(bookCode)>0;
	}
}
