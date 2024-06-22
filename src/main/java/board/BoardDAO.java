package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.mysql.cj.protocol.Resultset;

public class BoardDAO {
//게시판 데이터베이스 작업
	
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
	}//
	
	public BoardDTO insertBoard(BoardDTO boardDTO) {
		System.out.println("BoardDAO insertBoard()");
		try {
			Connection connection = getConnection();
			
			String sql = "insert into board(name,subject,content,num,readCount,date) values(?,?,?,?,?,?)";
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, boardDTO.getName());
			pstmt.setString(2, boardDTO.getSubject());
			pstmt.setString(3, boardDTO.getContent());
			pstmt.setInt(4, boardDTO.getNum());
			pstmt.setInt(5, boardDTO.getReadCount());
			pstmt.setTimestamp(6, boardDTO.getDate());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return boardDTO;
	}//
	
	public int getMaxNum() {
		System.out.println("BoardDAO getMaxNum()");
		int num = 0;
		try {
			Connection connection = getConnection();
			
			String sql = "select max(num) from board";
			PreparedStatement pstmt = connection.prepareStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				num = rs.getInt("max(num)");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return num;
	}//
	
	public ArrayList<BoardDTO> getBoardList(){
		System.out.println("BoardDAO getBoardList()");
		ArrayList<BoardDTO> boardList = new ArrayList<BoardDTO>();
		
		try {
			Connection connection = getConnection();
			
			String sql = "select * from board";
			PreparedStatement pstmt = connection.prepareStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardDTO boardDTO = new BoardDTO();
				boardDTO.setNum(rs.getInt("num"));
				boardDTO.setName(rs.getString("name"));
				boardDTO.setSubject(rs.getString("subject"));
				boardDTO.setContent(rs.getString("content"));
				boardDTO.setReadCount(rs.getInt("readCount"));
				boardDTO.setDate(rs.getTimestamp("date"));
				
				boardList.add(boardDTO);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return boardList;
	}//
	
	public BoardDTO getBoard(int num) {
		System.out.println("BoardDAO getBoard()");
		BoardDTO boardDTO = new BoardDTO();
		
		try {
			Connection connection = getConnection();
			
			String sql = "select * from board where num=?";
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				boardDTO.setNum(rs.getInt("num"));
				boardDTO.setName(rs.getString("name"));
				boardDTO.setSubject(rs.getString("subject"));
				boardDTO.setContent(rs.getString("content"));
				boardDTO.setReadCount(rs.getInt("readCount"));
				boardDTO.setDate(rs.getTimestamp("date"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return boardDTO;
	}//
	
	public void updateReadCount(int num) {
		System.out.println("BoardDAO updateReadCount()");
		try {
			Connection connection = getConnection();
			
			String sql = "update board set readCount = readCount+1 where num=?";
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
