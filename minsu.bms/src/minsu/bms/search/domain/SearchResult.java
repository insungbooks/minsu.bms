package minsu.bms.search.domain;

public class SearchResult {
	private String  bookCode;	//도서 코드
	private String  bookName;	//도서 제목
	private int 	bookPrice;	//도서 가격
	private String  writer;		//저자
	private String  company;	//출판사
	private String  publiDate;	//출판일
	private String  country;	//출판 국가(국내/해외)
	private String  kind;		//분류
	
	public SearchResult() {}
	
	public SearchResult(String bookCode, String bookName, int bookPrice, String writer, String company,
				String publiDate, String country, String kind) {
		this.bookCode = bookCode;
		this.bookName = bookName;
		this.bookPrice = bookPrice;
		this.writer = writer;
		this.company = company;
		this.publiDate = publiDate;
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

	public String getPubliDate() {
		return publiDate;
	}

	public void setPubliDate(String publiDate) {
		this.publiDate = publiDate;
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
