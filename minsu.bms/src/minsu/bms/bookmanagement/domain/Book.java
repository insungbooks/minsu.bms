package minsu.bms.bookmanagement.domain;

public class Book {
	private String  bookCode;
	private String  bookName;
	private int 	bookPrice;
	private String  writer;
	private String  company;
	private String  publiDate;
	private String  country;
	private String  kind;
	private int		inventory;
	private int 	salesNum;
	private String	writerIntro;
	private String	bookIntro;
	private String	contents1;
	private String	contents2;
	private String	contents3;
	private String	contents4;
	private String	companyEval;
	
	public Book() {}
	
	public Book(String bookCode, String bookName, int bookPrice, String writer, String company,
				String publiDate, String country, String kind, int inventory, int salesNum,
				String writerIntro,String bookIntro,String contents1,String contents2,
				String contents3,String contents4,String companyEval) {
		this.bookCode = bookCode;
		this.bookName = bookName;
		this.bookPrice = bookPrice;
		this.writer = writer;
		this.company = company;
		this.publiDate = publiDate;
		this.country = country;
		this.kind = kind;
		this.inventory = inventory;
		this.salesNum = salesNum;
		this.writerIntro = writerIntro;
		this.bookIntro = bookIntro;
		this.contents1 = contents1;
		this.contents2 = contents2;
		this.contents3 = contents3;
		this.contents4 = contents4;
		this.companyEval = companyEval; 
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

	public int getInventory() {
		return inventory;
	}

	public void setInventory(int inventory) {
		this.inventory = inventory;
	}

	public int getSalesNum() {
		return salesNum;
	}

	public void setSalesNum(int salesNum) {
		this.salesNum = salesNum;
	}

	public String getWriterIntro() {
		return writerIntro;
	}

	public void setWriterIntro(String writerIntro) {
		this.writerIntro = writerIntro;
	}

	public String getBookIntro() {
		return bookIntro;
	}

	public void setBookIntro(String bookIntro) {
		this.bookIntro = bookIntro;
	}

	public String getContents1() {
		return contents1;
	}

	public void setContents1(String contents1) {
		this.contents1 = contents1;
	}

	public String getContents2() {
		return contents2;
	}

	public void setContents2(String contents2) {
		this.contents2 = contents2;
	}

	public String getContents3() {
		return contents3;
	}

	public void setContents3(String contents3) {
		this.contents3 = contents3;
	}

	public String getContents4() {
		return contents4;
	}

	public void setContents4(String contents4) {
		this.contents4 = contents4;
	}

	public String getCompanyEval() {
		return companyEval;
	}

	public void setCompanyEval(String companyEval) {
		this.companyEval = companyEval;
	}
}
