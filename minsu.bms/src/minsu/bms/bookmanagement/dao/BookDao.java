package minsu.bms.bookmanagement.dao;

import java.util.List;

import minsu.bms.bookmanagement.domain.Book;
import minsu.bms.paging.domain.Page;

public interface BookDao {
	List<Book> bookList(Page page);
	Book getBook(String bookCode);
	int addBook(Book book);
	int updateBook(Book book);
	int delBook(String bookCode);
	
	List<Book> bestBookList();
	List<Book> newBookList();
	List<Book> saleBookList();
	List<Book> categoryBookList(String country, String kind);
}
