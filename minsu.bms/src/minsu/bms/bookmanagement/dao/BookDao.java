package minsu.bms.bookmanagement.dao;

import java.util.List;

import minsu.bms.bookmanagement.domain.Book;

public interface BookDao {
	List<Book> bookList();
	Book getBook(String bookCode);
	int addBook(Book book);
	int updateBook(Book book);
	int delBook(String bookCode);	
}
