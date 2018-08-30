package Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {
	
	public static Connection getConnection(){
        // 블럭 후 alt+shift+z 후 try block
        Connection conn = null;
        
        try {
            Context initContext = new InitialContext();
            Context envContext  = (Context)initContext.lookup("java:/comp/env");
                                                        // myoracle <-- context.xml
            DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
            
            conn = ds.getConnection();
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        
        return conn;
    }
	
	// select문을 수행한 후 리소스 해제를 위한 메서드
	
	public static void close(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException ex) {
			}
		}
	}	
	public static void close(PreparedStatement pstmt) {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException ex) {
			}
		}
	}	
	public static void close(Connection conn) {
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException ex) {
			}
		}
	}
	public static void close(Connection conn,PreparedStatement pstmt,ResultSet rs) {
		close(rs);
		close(pstmt);
		close(conn);
	}
	public static void close(Connection conn,PreparedStatement pstmt) {		
		close(pstmt);
		close(conn);
	}

	
	
	
	
	
	
	
	

}
