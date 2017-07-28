package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {
	public static Connection getConn() throws SQLException{
		try{
			Class.forName("oracle.jdbc.OracleDriver");
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			Connection con=DriverManager.getConnection(url,"scott","tiger");
			return con;
		}catch(ClassNotFoundException ce){
			System.out.println(ce.getMessage());
			return null;
		}
	}
	public static void close(Connection con,Statement stmt,ResultSet rs){
		try{
			if(rs!=null) rs.close();
			if(con!=null) con.close();
			if(stmt!=null) stmt.close();
		}catch(SQLException se){
			System.out.println(se.getMessage());
		}
	}
	public static void close(Statement stmt){
		try{
			if(stmt!=null) stmt.close();
		}catch(SQLException se){
			System.out.println(se.getMessage());
		}
	}
	public static void close(ResultSet rs){
		try{
			if(rs!=null) rs.close();
		}catch(SQLException se){
			System.out.println(se.getMessage());
		}
	}
	public static void close(Connection con){
		try{
			if(con!=null) con.close();
		}catch(SQLException se){
			System.out.println(se.getMessage());
		}
	}
}
