package minsu.bms.bookmanagement.dao.mapper;

import java.util.List;

import minsu.bms.bookmanagement.domain.Book;

public interface BookMapper {
	List<Book> bookList();
	Book getBook(String bookCode);
	int addBook(Book book);
	int updateBook(Book book);
	int delBook(String bookCode);	
}
