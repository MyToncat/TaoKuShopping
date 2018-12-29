package com.hk.dao;

import com.hk.domain.Category;
import com.hk.domain.Product;
import com.hk.util.DBUtil;
import org.junit.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Productdao {
    public List<Product> finProductByCid(Category category){
        Connection conn=null;
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        List<Product> products=new ArrayList<Product>();

        try{
            conn= DBUtil.getConnection();
            String sql="select * from product where pflag=0 and cid=? limit 12";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,category.getCid());
            rs=pstmt.executeQuery();

            while(rs.next()){
                String pid=rs.getString("pid");
                String pname=rs.getString("pname");
                double marked_price=rs.getDouble("market_price");
                double shop_price=rs.getDouble("shop_price");
                String pimage=rs.getString("pimage");
                String pdate=rs.getString("pdate");
                String is_hot=rs.getString("is_hot");
                String pdesc=rs.getString("pdesc");
                int p_flag=rs.getInt("pflag");
                Product p=new Product(pid,pname,marked_price,shop_price,pimage,pdate,is_hot,pdesc,p_flag,category);
                products.add(p);
            }

        }
        catch(ClassNotFoundException e){
            e.printStackTrace();
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        finally {

        }
        return products;
    }
    @Test
    public void testProductdao(){
        Category ca=new Category("1","手机数码");
        List<Product> ls=finProductByCid(ca);
        System.out.println(ls);
        System.out.println("nn");

    }

    public List<Product> findProductNew(){
        Connection conn=null;
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        List<Product> products=new ArrayList<Product>();
        String sql="select p.* ,c.cname from  product p, category c where pflag=0  and p.cid=c.cid order by pdate limit 9";
        try {
            conn = DBUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            rs=pstmt.executeQuery();
            while(rs.next()){
                String pid=rs.getString("pid");
                String pname=rs.getString("pname");
                double marked_price=rs.getDouble("market_price");
                double shop_price=rs.getDouble("shop_price");
                String pimage=rs.getString("pimage");
                String pdate=rs.getString("pdate");
                String is_hot=rs.getString("is_hot");
                String pdesc=rs.getString("pdesc");
                int p_flag=rs.getInt("pflag");
                String cname=rs.getString("cname");
                String cid=rs.getString("cid");
                //商品分类
                Category category=new Category("cid","cname");
                //商品
                Product p=new Product(pid,pname,marked_price,shop_price,pimage,pdate,is_hot,pdesc,p_flag,category);
                products.add(p);
            }

        } catch (SQLException e) {
           throw new RuntimeException();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        finally {
            DBUtil.close(rs,pstmt,conn);
        }

        return products;
    }
    @Test
    public void testProduct(){
       List<Product>products=findProductNew();
       System.out.println(products);
    }
    public Product findProductByPid(String pid,String cid,String cname){

        Connection conn=null;
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        Product product=null;
        try {
            conn=DBUtil.getConnection();
            String sql="select * from product where pid=?";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,pid);
            rs=pstmt.executeQuery();
            if(rs.next()){

                String pname=rs.getString("pname");
                double marked_price=rs.getDouble("market_price");
                double shop_price=rs.getDouble("shop_price");
                String pimage=rs.getString("pimage");
                String pdate=rs.getString("pdate");
                String is_hot=rs.getString("is_hot");
                String pdesc=rs.getString("pdesc");
                int p_flag=rs.getInt("pflag");

                Category category=new Category(cid,cname);
                product =new Product(pid,pname,marked_price,shop_price,pimage,pdate,is_hot,pdesc,p_flag,category);
            }

        } catch (ClassNotFoundException e) {
            throw new RuntimeException();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            DBUtil.close(rs,pstmt,conn);
        }
        return  product;
    }
    @Test
    public void  testfindProductBYPid() {
        System.out.println(findProductByPid("1","3","家具家居"));
    }

}

