package com.hk.domain;

public class Product {
    private String pid;
    private String pname;
    private double marked_price;
    private double shop_price;
    private String pimage;
    private String pdate;
    private String is_hot;
    private String pdesc;
    private int p_flag;//是否上架
    private Category category;//分类查看详情

    public Product() {
    }

    public Product(String pid, String pname, double marked_price, double shop_price, String pimage, String pdate, String is_hot, String pdesc, int p_flag, Category category) {
        this.pid = pid;
        this.pname = pname;
        this.marked_price = marked_price;
        this.shop_price = shop_price;
        this.pimage = pimage;
        this.pdate = pdate;
        this.is_hot = is_hot;
        this.pdesc = pdesc;
        this.p_flag = p_flag;
        this.category = category;
    }

    public Product(String pid, String pname, double marked_price, double shop_price, String pimage, String pdate, String is_hot, String pdesc, int p_flag) {
        this.pid = pid;
        this.pname = pname;
        this.marked_price = marked_price;
        this.shop_price = shop_price;
        this.pimage = pimage;
        this.pdate = pdate;
        this.is_hot = is_hot;
        this.pdesc = pdesc;
        this.p_flag = p_flag;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public double getMarked_price() {
        return marked_price;
    }

    public void setMarked_price(double marked_price) {
        this.marked_price = marked_price;
    }

    public double getShop_price() {
        return shop_price;
    }

    public void setShop_price(double shop_price) {
        this.shop_price = shop_price;
    }

    public String getPimage() {
        return pimage;
    }

    public void setPimage(String pimage) {
        this.pimage = pimage;
    }

    public String getPdate() {
        return pdate;
    }

    public void setPdate(String pdate) {
        this.pdate = pdate;
    }

    public String getIs_hot() {
        return is_hot;
    }

    public void setIs_hot(String is_hot) {
        this.is_hot = is_hot;
    }

    public String getPdesc() {
        return pdesc;
    }

    public void setPdesc(String pdesc) {
        this.pdesc = pdesc;
    }

    public int getP_flag() {
        return p_flag;
    }

    public void setP_flag(int p_flag) {
        this.p_flag = p_flag;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Product{" +
                "pid='" + pid + '\'' +
                ", pname='" + pname + '\'' +
                ", marked_price=" + marked_price +
                ", shop_price=" + shop_price +
                ", pimage='" + pimage + '\'' +
                ", pdate='" + pdate + '\'' +
                ", is_hot='" + is_hot + '\'' +
                ", pdesc='" + pdesc + '\'' +
                ", p_flag=" + p_flag +
                ", category=" + category +
                '}';
    }
}
