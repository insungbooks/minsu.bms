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
	private String	contents;
	private String	companyEval;
	
	public Book() {}
	
	public Book(String bookCode, String bookName, int bookPrice, String writer, String company,
				String publiDate, String country, String kind, int inventory, int salesNum,
				String writerIntro,String bookIntro,String contents,String companyEval) {
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
		this.contents = contents;
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

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getCompanyEval() {
		return companyEval;
	}

	public void setCompanyEval(String companyEval) {
		this.companyEval = companyEval;
	}
}
