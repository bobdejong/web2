package com.saeyan.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
 
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
 
import com.saeyan.dto.MemberVO;
 
public class MemberDAO {
    // 싱글턴 - DB연동을 한 번만 진행할 수 있도록 한다.
    private MemberDAO(){
        
    }
    // 한 번만 만들어 놓고 사용하기 위해 static
    private static MemberDAO instance = new MemberDAO();
    
    public static MemberDAO getInstance(){
        return instance;    // MemberDAO dao = MemberDao.getInstance();
                            // DB하고의 연결지점을 확보해라!
                            // dao.insert()
                            // dao.delete()
                            // ....
        
    }
    
    public Connection getConnection(){
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
    
    /**
     * userid와 pwd를 통해서 사용자를 확인한다.
     * @param userid
     * @param pwd
     * @return 1:로그인 상태  0:아이디는 있으나 비번이 안 맞는지  -1:아이디 부재
     */
    // #9] LoginServlet에서 왔다.
    public int userCheck(String userid, String pwd){
        // 로그파일 - 어디서부터 안 되는지 확인하기 위해 흔적을 남김
        System.out.println("dao - userCheck() 메서드");
        
        // 경우의 수에 맞춰야 하니까 result 변수를 만들자.
        int result = -1;
        // 아이디에 맞는 pwd 컬럼을 조회해라.
        String sql="select pwd from member where userid=?";
        Connection conn = null;
        // 바인딩 변수가 있으면 preparedStatement, 없으면 Statement
        PreparedStatement pstmt = null;
        // 아이디와 비번이 있는지 없는지 조회를 해가지고 와! resultSet
        ResultSet rs = null;
        
        try{
            conn = getConnection(); // 오라클 11, localhost에 xe, scott1400 tiger가 연결되어있음
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userid);
            
            rs = pstmt.executeQuery();
            if(rs.next()){
                if(rs.getString("pwd").equals(pwd)){                    
                    result = 1;    // 정확해~
                } else{
                    // 상황이 여러 개이기 때문에 true/false로 하는 게 아니고
                    // int로 하는 거다. 그 int를 가지고 내가 상황을 정리하는 것!
                    result = 0;    // 비번이 틀렸어~
                }
            } else{
                result = -1;    // 아이디가 없어~
            }
            
            
        }catch(Exception e){
            // SQLException 쓰면 되는데 혹시 몰라 Exception
            e.printStackTrace();
        }finally{
            try{
                if(rs != null) rs.close();
                if(pstmt != null) pstmt.close();
                if(conn != null) conn.close();
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        
        // #10] LoginServlet의 doPost로 가자!
        return result;    // 1, 0, -1
    }
    /**
     * id에 맞는 회원 정보 6개를 모아서 리턴해 주는 메서드
     * @param userid
     * @return
     */
    
    // #51] Member수정서블릿 doGet에서 왔다.
    public MemberVO getMember(String userid){
        MemberVO vo = null;
        
        String sql="select * from member where userid=?";
        Connection conn = null;
        // 바인딩 변수가 있으면 preparedStatement, 없으면 Statement
        PreparedStatement pstmt = null;
        // 아이디와 비번이 있는지 없는지 조회를 해가지고 와! resultSet
        ResultSet rs = null;
        
        
        try{
            conn = getConnection(); // 오라클 11, localhost에 xe, scott1400 tiger가 연결되어있음
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userid);
            
            rs = pstmt.executeQuery();
            if(rs.next()){
                vo = new MemberVO();
                vo.setName(rs.getString("name"));
                vo.setUserid(rs.getString("userid"));
                vo.setPwd(rs.getString("pwd"));
                vo.setEmail(rs.getString("email"));
                vo.setPhone(rs.getString("phone"));
                vo.setAdmin(rs.getInt("admin"));
            }
            
        }catch(Exception e){
            // SQLException 쓰면 되는데 혹시 몰라 Exception
            e.printStackTrace();
        }finally{
            try{
                if(rs != null) rs.close();
                if(pstmt != null) pstmt.close();
                if(conn != null) conn.close();
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        // #52] 다시 MemberUpdateServlet의 doGet으로 가자. userid에 대한 정보를 들고 돌아간다.
        
        return vo;
    }
    /**
     * 해당 아이디가 있는지 없는지 확인하는 메서드  1:있음  -1:없음
     * @param userid
     * @return
     */
    //#23] IdCheckServlet에서 넘어왔다.
    public int confirmID(String userid){
        System.out.println("confirmID dao");
        int result = -1;
        String sql="select userid from member where userid=?";
        Connection conn = null;
        // 바인딩 변수가 있으면 preparedStatement, 없으면 Statement
        PreparedStatement pstmt = null;
        // 아이디와 비번이 있는지 없는지 조회를 해가지고 와! resultSet
        ResultSet rs = null;
        
        try{
            conn = getConnection(); // 오라클 11, localhost에 xe, scott1400 tiger가 연결되어있음
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userid);
            
            rs = pstmt.executeQuery();
            if(rs.next()){
                    result = 1;    // 해당 id를 쓸 수 없다.(1) 
            } else{
                result = -1;    // 해당 id 사용 가능(-1)
            }
        }catch(Exception e){
            // SQLException 쓰면 되는데 혹시 몰라 Exception
            e.printStackTrace();
        }finally{
            try{
                if(rs != null) rs.close();
                if(pstmt != null) pstmt.close();
                if(conn != null) conn.close();
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        
        //#24] 다시 서블릿으로 결과값을 들고 가자
        return result;
    }
    
    /**
     * join 게시판에서 작성한 6개 회원 정보를 입력하는 메서드
     * @param vo
     * @return sql 수행 후 처리된 행의 개수를 반환<br>
     *             (여기서는 한번 당 한 명씩 가입, 따라서 무조건 1, 또는 0)
     */
    // #36] vo로 넘겨받은 데이터를 DB에 쓰자.
    public int insertMember(MemberVO vo){
        int result = 0;
        String sql="insert into member values (?,?,?,?,?,?)";
        Connection conn = null;
        // 바인딩 변수가 있으면 preparedStatement, 없으면 Statement
        PreparedStatement pstmt = null;
        
        try{
            conn = getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, vo.getName());
            pstmt.setString(2, vo.getUserid());
            pstmt.setString(3, vo.getPwd());
            pstmt.setString(4, vo.getEmail());
            pstmt.setString(5, vo.getPhone());
            pstmt.setInt(6, vo.getAdmin());
            
            result = pstmt.executeUpdate();
            
        }catch(Exception e){
            // SQLException 쓰면 되는데 혹시 몰라 Exception
            e.printStackTrace();
        }finally{
            try{
                if(pstmt != null) pstmt.close();
                if(conn != null) conn.close();
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        // #37] JoinServlet으로 이동!
        return result;
    }
    
    /**
     * 수정 게시판에서 작성한 내용(4개) 항목을 수정하는 sql 명령을 수행한다.
     * @param vo
     * @return 수정한 행(레코드)의 개수를 반환한다.
     */
    
    // #59] MemberUpdateServlet의 doPost에서 수정 정보 들고 왔다.
    public int updateMember(MemberVO vo){
        
        String sql="update member set pwd=?, email=?, phone=?, admin=? where userid=?";
        Connection conn = null;
        // 바인딩 변수가 있으면 preparedStatement, 없으면 Statement
        PreparedStatement pstmt = null;
        int result = 0;
        
        try{
            conn = getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, vo.getPwd());
            pstmt.setString(2, vo.getEmail());
            pstmt.setString(3, vo.getPhone());
            pstmt.setInt(4, vo.getAdmin());
            pstmt.setString(5, vo.getUserid());
 
            result = pstmt.executeUpdate();
            
        }catch(Exception e){
            // SQLException 쓰면 되는데 혹시 몰라 Exception
            e.printStackTrace();
        }finally{
            try{
                if(pstmt != null) pstmt.close();
                if(conn != null) conn.close();
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        
        return result;
    }
    
    public int deleteMember(String userid){
        String sql="delete from member where userid=?";
        Connection conn = null;
        PreparedStatement pstmt = null;
        int result = 0;
        
        try{
            conn = getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userid);
            result = pstmt.executeUpdate();
            
        }catch(Exception e){
            // SQLException 쓰면 되는데 혹시 몰라 Exception
            e.printStackTrace();
        }finally{
            try{
                if(pstmt != null) pstmt.close();
                if(conn != null) conn.close();
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        
        return result;
    }
    
}