package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

public class MemberDAO {
	
	public Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/jspdb1?serverTimezone=Asia/Seoul";
			String user = "root";
			String password = "1234";
			connection = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}

	public void insertMember(String id, String pw, String name, Timestamp date) {
		System.out.println("MemberDAO insertMember()");
		System.out.println("전달받은 아이디 : " + id);
		System.out.println("전달받은 비밀번호 : " + pw);
		System.out.println("전달받은 이름 : " + name);
		System.out.println("전달받은 시간 : " + date);

		try {
			Connection connection = getConnection();
			
			String sql = "insert into members values(?,?,?,?)";
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setTimestamp(4, date);
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}//
	
	public boolean userCheck(String id, String pw) {
		System.out.println("MemberDAO userCheck()");
		boolean result = false;
		
		try {
		Connection connection = getConnection();
		
		String sql = "select * from members where id=? and pw=?";
		PreparedStatement pstmt = connection.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);

		//SQL 구문 실행 → 실행 후 결과 저장(select) → ResultSet 내장객체 저장
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()){
			System.out.println("로그인 성공");
			System.out.println("입력한 아이디 : " + id);
			System.out.println("입력한 비밀번호 : " + pw);
			result = true;
		}else{
			System.out.println("로그인 실패");
			System.out.println("입력한 아이디 : " + id);
			System.out.println("입력한 비밀번호 : " + pw);
			result = false;
		}
		
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return result;
	}//
	
	public MemberDTO getMember(String id) {
		System.out.println("MemberDAO getMember()");
		MemberDTO memberDTO = new MemberDTO();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/jspdb1?serverTimezone=Asia/Seoul";
			String user = "root";
			String password = "1234";
			Connection connection = DriverManager.getConnection(url, user, password);

			String sql = "select * from members where id=?";
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, id);

			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				System.out.println("올바른 접근");
				System.out.println(memberDTO);
				memberDTO.setId(rs.getString("id"));
				memberDTO.setPw(rs.getString("pw"));
				memberDTO.setName(rs.getString("name"));
				memberDTO.setDate(rs.getTimestamp("date"));
			} else {
				System.out.println("잘못된 접근");
				System.out.println(memberDTO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return memberDTO;
	}//
	
	public void updateMember(MemberDTO memberDTO) {
		System.out.println("MemberDAO updateMember()");
		System.out.println("memberDTO 주소 : " + memberDTO);
		System.out.println("전달 받은 아이디 : " + memberDTO.getId());
		System.out.println("전달 받은 비밀번호 : " + memberDTO.getPw());
		System.out.println("전달 받은 이름 : " + memberDTO.getName());
		System.out.println("전달 받은 시간 : " + memberDTO.getDate());
		
		try {
			Connection connection = getConnection();
			String sql = "update members set name=? where id=?";
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, memberDTO.getName());
			pstmt.setString(2, memberDTO.getId());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//
	
	public void deleteMember(String id) {
		try {
			Connection connection = getConnection();
			String sql = "delete from members where id=?";
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<MemberDTO> getMemberList(){
		ArrayList<MemberDTO> memberList = new ArrayList<MemberDTO>();
		try {
			Connection connection = getConnection();
			String sql = "select * from members";
			PreparedStatement pstmt = connection.prepareStatement(sql);

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				//한 회원의 정보를 저장할 용기 memberDTO 객체 생성
				MemberDTO memberDTO = new MemberDTO();
				System.out.println("memberDTO 주소 : " + memberDTO);
				//memberDTO 멤버변수에 열에 접근해서 가져온 데이터를 저장
				memberDTO.setId(rs.getString("id"));
				memberDTO.setPw(rs.getString("pw"));
				memberDTO.setName(rs.getString("name"));
				memberDTO.setDate(rs.getTimestamp("date"));
				//배열 한 칸에 저장
				memberList.add(memberDTO);
			}
			System.out.println("memberList 주소 : " + memberList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return memberList;
	}
	
}
