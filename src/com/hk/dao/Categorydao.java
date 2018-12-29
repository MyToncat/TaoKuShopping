package com.hk.dao;

import com.hk.domain.Category;
import com.hk.util.DBUtil;
import org.junit.Test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Categorydao {
    public List<com.hk.domain.Category> findAllCategory() {
        String sql = "select * from category";
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ArrayList<Category> cates = new ArrayList<Category>();
        try {
            conn = DBUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                String uid = null;
                String cname = null;
                uid = rs.getString("cid");
                cname = rs.getString("cname");
                Category category = new Category(uid, cname);
                cates.add(category);

            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cates;
    }
    @Test
    public void testFind() {
        List<Category> cates=findAllCategory();
        System.out.println(cates.toString());
    }

    public Category findCategory(String cid){
        Connection conn=null;
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        Category category=null;
        try {
                conn= DBUtil.getConnection();
                String sql="select * from category where cid=?";
                pstmt=conn.prepareStatement(sql);
                pstmt.setString(1,cid);
               rs=pstmt.executeQuery();
               if(rs.next()){
                   category =new Category();
                  String cname=rs.getString("cname");
                  category.setCid(cid);
                  category.setCname(cname);

               }

            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            finally {
           DBUtil.close(rs,pstmt,conn);
        }
        return  category;
    }
    @Test
    public void testf(){
        String cid="2";
        Category c=findCategory(cid);
        System.out.println(c.toString());


    }
}
