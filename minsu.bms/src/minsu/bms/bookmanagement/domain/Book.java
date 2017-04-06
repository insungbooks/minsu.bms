package minsu.bms.bookmanagement.domain;

import java.sql.Date;

public class Book {
	private String  bookCode;
	private String  bookName;
	private int 	bookPrice;
	private String  writer;
	private String  company;
	private Date    publiDate;
	private int     sellCount;
	private String  country;
	private String  kind;
	
	public Book() {}
	
	public Book(String bookCode, String bookName, int bookPrice, String writer, String company,
				Date publiDate, int sellCount, String country, String kind) {
		this.bookCode = bookCode;
		this.bookName = bookName;
		this.bookPrice = bookPrice;
		this.writer = writer;
		this.company = company;
		this.publiDate = publiDate;
		this.sellCount = sellCount;
		this.country = country;
		this.kind = kind;
	}
	
	public String getBookCode() {
		return bookCode;
	}

	public void setBookCode(String bookCode) {
		this.bookCode = bookCode;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public int getBookPrice() {
		return bookPrice;
	}

	public void setBookPrice(int bookPrice) {
		this.bookPrice = bookPrice;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public Date getPubliDate() {
		return publiDate;
	}

	public void setPubliDate(Date publiDate) {
		this.publiDate = publiDate;
	}

	public int getSellCount() {
		return sellCount;
	}

	public void setSellCount(int sellCount) {
		this.sellCount = sellCount;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}
}
