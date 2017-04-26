package minsu.bms.login.domain;

public class User {
	private String userId;
	private String password;  
	private String name;      
	private int age;      
	private String gender;
	private String myNum;
	private String email;     
	private String phoneNum; 
	private String address;
	private int point;
	
	public User(){}
	
	public User(String userId,String password, String name, int age, String gender, String myNum,
				String email, String phoneNum, String address, int point) {
		this.userId = userId;
		this.password = password;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.myNum = myNum;
		this.email = email;
		this.phoneNum = phoneNum;
		this.address = address;
		this.point=point;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMyNum() {
		return myNum;
	}

	public void setMyNum(String myNum) {
		this.myNum = myNum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}
	
}
