package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.mysql.cj.protocol.Resultset;

public class BoardDAO {
//게시판 데이터베이스 작업
	Connection connection = null;
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	
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
	
	public void insertBoard(BoardDTO boardDTO) {
		System.out.println("BoardDAO insertBoard()");
		try {
			connection = getConnection();
			
			String sql = "insert into board(name,subject,content,num,readCount,date) values(?,?,?,?,?,?)";
			pstmt = connection.prepareStatement(sql);
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
	}//
	
	public int getMaxNum() {
		System.out.println("BoardDAO getMaxNum()");
		int num = 0;
		try {
			connection = getConnection();
			
			String sql = "select max(num) from board";
			pstmt = connection.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
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
			connection = getConnection();
			
			String sql = "select * from board";
			pstmt = connection.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
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
			connection = getConnection();
			
			String sql = "select * from board where num=?";
			pstmt = connection.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
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
			connection = getConnection();
			
			String sql = "update board set readCount = readCount+1 where num=?";
			pstmt = connection.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//
	
	public void updateBoard(BoardDTO boardDTO) {
		System.out.println("BoardDAO updateBoard()");
		try {
			connection = getConnection();
			
			String sql = "update board set content = ?, subject=? where num=?";
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, boardDTO.getContent());
			pstmt.setString(2, boardDTO.getSubject());
			pstmt.setInt(3, boardDTO.getNum());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//
	
	public void deleteBoard(BoardDTO boardDTO) {
		System.out.println("BoardDAO deleteBoard()");
		try {
			connection = getConnection();

			String sql = "delete from board where num=?";
			pstmt = connection.prepareStatement(sql);
			pstmt.setInt(1, boardDTO.getNum());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//
	
	

}
