package minsu.bms.bookmanagement.service;

import java.util.List;

import minsu.bms.bookmanagement.domain.Book;
import minsu.bms.paging.domain.Page;

public interface BookService {
	List<Book> listBooks(Page page);
	Book findBook(String bookCode);
	boolean addBook(Book book);
	boolean modifyBook(Book book);
	boolean deleteBook(String bookCode);
}
