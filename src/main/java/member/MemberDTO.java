package member;

import java.sql.Timestamp;

public class MemberDTO {

	//멤버변수 → 변수를 아무나 쉽게 접근하지 못하게 막아줌 → 데이터 은닉
	//데이터 은닉과 캡슐화
	private String id;
	private String pw;
	private String name;
	private Timestamp date;
	
	//변수로 직접 데이터에 접근하지 못하게 하고, 메서드로 데이터를 접근할 수 있도록 pubilc getter,setter 메서드 생성
	//alt + shift + s => r
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	
}
