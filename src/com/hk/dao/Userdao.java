package com.hk.dao;

import com.hk.domain.User;
import com.hk.util.DBUtil;
import com.hk.util.UUIDUtil;
import org.junit.Test;

import javax.xml.transform.Result;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Userdao {
    private User user;

    public int add (User user){
     Connection conn=null;
     PreparedStatement pstmt=null;
     int count=0;
     try {
         //获得连接对象
         conn=DBUtil.getConnection();
         String sql="INSERT INTO USER VALUES(?,?,?,?,?,?,?,?,?,?,?)";
         //创建命令执行对象
         pstmt=conn.prepareStatement(sql);
         //设置占位符的参数
         pstmt.setString(1, UUIDUtil.getUUID());
         pstmt.setString(2, user.getUsername());
         pstmt.setString(3, user.getPassword());
         pstmt.setString(4, user.getName());
         pstmt.setString(5, user.getPhoto());
         pstmt.setString(6, user.getEmail());
         pstmt.setString(7, user.getTelephone());
         pstmt.setString(8, user.getBirthday());
         pstmt.setString(9, user.getSex());
         pstmt.setInt(10, user.getState());
         pstmt.setString(11,user.getCode());

         //执行sql语句
        count= pstmt.executeUpdate();
         //释放资源
     } catch (ClassNotFoundException e) {
         e.printStackTrace();
     } catch (SQLException e) {
         e.printStackTrace();
     }finally {
         DBUtil.close(null, pstmt, conn);
     }
     return count;
 }
   @Test
    public void testAdd() {
        User user=new User();
        user.setUsername("jerry");
        user.setPassword("111111");
        user.setEmail("jerry@126.com");
        user.setSex("男");
        add(user);
    }
    public User find(User user){
     String sql="select * from user where username=? and password=?";
     Connection conn=null;
     User reuslt=null;
     PreparedStatement pstmt=null;
     ResultSet rs=null;
     //
        try{
            conn=DBUtil.getConnection();
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,user.getUsername());
            pstmt.setString(2,user.getPassword());

            rs=pstmt.executeQuery();
            if (rs.next()){
                user=new User();
                String uid=rs.getString("uid");
                String username=rs.getString("username");
                String  password=rs.getString("password");
                String name=rs.getString("name");
                String photo=rs.getString("photo");
                String email=rs.getString("email");
                String telephone=rs.getString("telephone");
                String birthday=rs.getString("birthday");
                String sex=rs.getString("sex");
                int state=rs.getInt("state");
                String code=rs.getString("code");

                reuslt=new User(uid,username, password, name, photo, email, birthday, telephone, sex, state, code);
            }

        }
        catch (ClassNotFoundException e){
            e.printStackTrace();

        }
        catch (SQLException e){
            e.printStackTrace();
        }
        finally {

        }
        return reuslt;
    }

    public boolean findUserByName(String username){
        boolean flag=false;
        String sql="select username from user where username=?";
        Connection conn=null;
        PreparedStatement pstmt=null;
        String name=null;
        ResultSet rs=null;
        try{
            conn=DBUtil.getConnection();
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,username);
            rs=pstmt.executeQuery();
            if(rs.next()){
               flag=true;

            }
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }catch (SQLException e){
            e.printStackTrace();
        }
        finally {
            DBUtil.close(rs,pstmt,conn);
        }
        return flag;

    }
    @Test
    public void testFind(){
        User user=new User();
      user.setUsername("admin");
      user.setPassword("11");
      // Userdao ud=new Userdao();
      if (find(user)!=null){
          System.out.println("成功");
      }else
      {
          System.out.println("失败");
      }
    }
    @Test
    public void testFindname(){
        String name="mm";
        Userdao dao=new Userdao();
        Boolean flag=false;
        flag=dao.findUserByName(name);
        //空值不是布尔类型；要考虑空值
        if (flag!=null){
            System.out.println("成功");
        }
        else{
            System.out.println("失败");
        }

    }
}
