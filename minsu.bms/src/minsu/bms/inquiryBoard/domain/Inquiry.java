package minsu.bms.inquiryBoard.domain;

public class Inquiry {
	private int boardNum;
	private String separation;
	private String userId;
	private String title;
	private String content;
	private String answer;
	private String answerState;
	private String reportingDate;
	
	public Inquiry() {}
	
	public Inquiry(int boardNum, String separation, String userId, String title, String content, String answer, String answerState,String reportingDate) {
		this.boardNum=boardNum;
		this.separation=separation;
		this.userId=userId;
		this.title=title;
		this.content=content;
		this.answer=answer;
		this.answerState=answerState;
		this.reportingDate=reportingDate;
	}
	
	public Inquiry(String answer) {
		this.answer=answer;
	}
	
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getSeparation() {
		return separation;
	}

	public void setSeparation(String separation) {
		this.separation = separation;
	}

	public String getAnswerState() {
		return answerState;
	}

	public void setAnswerState(String answerState) {
		this.answerState = answerState;
	}

	public String getReportingDate() {
		return reportingDate;
	}

	public void setReportingDate(String reportingDate) {
		this.reportingDate = reportingDate;
	}
	
	//toString
}
