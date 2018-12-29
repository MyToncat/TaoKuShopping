<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>会员登录</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="css/style.css" type="text/css"/>
<style>
    body{
        margin-top:20px;
        margin:0 auto;
    }
    .carousel-inner .item img{
        width:100%;
        height:300px;
    }
    .container .row div{
        /* position:relative;
        float:left; */
    }
    font {
        color: #3164af;
        font-size: 18px;
        font-weight: normal;
        padding: 0 10px;
    }
</style>

<script type="text/javascript">
    $(function () {
        //获取用户名的表单元素
        //失去焦点（id.blur（））
        $("#username").blur(function () {
            //获取用户名的表单元素的内容
            var uname=$(this).val();
            if(name.length){
                alert("请输入用户名");
                return;
            }
            //发送alert请求
            $.post("userexits",{username:uname},function (data) {
                if(data=="yes"){
                $("#errorName").html("用户名被占用")
                }
                else{
                    $("#errorName").html("用户名有效");
                }
            })

        })
    })


    //认证密码
/*    $(function () {
        //获取用户名的表单元素
        //失去焦点（id.blur（））
        $("#inputPassword3").blur(function () {
            //获取用户名的表单元素的内容
            var password=$(this).val();
            if(password.length==0){
                alert("请输入密码！");
            }
            if(password.length<6) {
                $("#mima").html("密码必须大于等于6位！");
                $("#mima").css("color","red");
            }
           else  if(password.length>128) {
                $("#mima").html("密码必须小于等于128位！");
                $("#mima").css("color","red");
            }
            else{

                $("#mima").html("密码有效！");
                $("#mima").css("color","black");
            }


        })
    })*/

//密码复杂度认证----正则比配
/*
    ^ 匹配一行的开头位置
    (?![0-9]+$) 预测该位置后面不全是数字
    (?![a-zA-Z]+$) 预测该位置后面不全是字母
        [0-9A-Za-z] {8,16} 由8-16位数字或这字母组成
    $ 匹配行结尾位置
 */

    $(function () {
        $("#inputPassword3").blur(function () {
           /* var regex = new RegExp('^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$');*/
        /*    由数字和字母组成，并且要同时含有数字和字母，且长度要在8-16位之间。*/
            var password=$(this).val();
            if(!(/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,128}$/.test(password))){
                $("#mima").css("color","red");
                $("#mima").html("同时含有数字和字母，且长度要在8-128位之间");
            }else{
                $("#mima").html(" ");
            }

        })

    })


    //比较密码
    $(function () {
        $("#confirmpwd").hover(function () {
            var pwd = $("#inputPassword3").val();
            var pwd1 = $("#confirmpwd").val();
            if(pwd == pwd1)
            {
                $("#mima01").html("两次密码相同");
                $("#mima01").css("color","black");

            }

            else {

                $("#mima01").html("两次密码不相同");

                $("#mima01").css("color","red")
            }
        })

    })


</script>

</head>
<body>
<%@include file="header.jsp"%>

<%--
<!--
    描述：菜单栏
-->
<div class="container-fluid">
    <div class="col-md-4">
        <img src="img/logo3.png" />
    </div>
    <div class="col-md-3" style="padding-top:20px">
        <ol class="list-inline">
            <li><a href="login.htm">登录</a></li>
            <li><a href="register.htm">注册</a></li>
            <li><a href="cart.htm">购物车</a></li>
        </ol>
    </div>
</div>
<!--
    描述：导航条
-->
<div class="container-fluid">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">首页</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">手机数码<span class="sr-only">(current)</span></a></li>
                    <li><a href="#">电脑办公</a></li>
                    <li><a href="#">电脑办公</a></li>
                    <li><a href="#">电脑办公</a></li>
                </ul>
                <form class="navbar-form navbar-right" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
</div>
--%>





<div class="container" style="width:100%;background:url('image/regist_bg.jpg');">
    <div class="row">

        <div class="col-md-2"></div>

        <div class="col-md-8" style="background:#fff;padding:40px 80px;margin:30px;border:7px solid #ccc;">
            <font>会员注册</font>USER REGISTER
            <form  action="regist" class="form-horizontal" style="margin-top:5px;" method="post">
                <div class="form-group">
                    <label for="username" class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="username" placeholder="请输入用户名" name="username">
                        <span id="errorName">

                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="请输入密码" name="password">
                         <span id="mima"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="confirmpwd" class="col-sm-2 control-label">确认密码</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="confirmpwd" placeholder="请输入确认密码">
                        <span id="mima01"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-6">
                        <input type="email" class="form-control" id="inputEmail3" placeholder="Email" name="email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="usercaption" class="col-sm-2 control-label">姓名</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="usercaption" placeholder="请输入姓名" name="name">
                    </div>
                </div>
                <div class="form-group opt">
                    <label for="inlineRadio1" class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-6">
                        <label class="radio-inline">
                            <input type="radio"  id="inlineRadio1"  name="sex" value="男"> 男
                        </label>
                        <label class="radio-inline">
                            <input type="radio"  id="inlineRadio2" name="sex" value="女"> 女
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="submit"  width="100" value="注册" name="submit" border="0"
                               style="background: url('./images/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0);
				    height:35px;width:100px;color:white;">
                    </div>
                </div>
            </form>
        </div>

        <div class="col-md-2"></div>

    </div>
</div>

<div style="text-align: center;margin-top: 5px;">
    <ul class="list-inline">
        <li><a>关于我们</a></li>
        <li><a>联系我们</a></li>
        <li><a>招贤纳士</a></li>
        <li><a>法律声明</a></li>
        <li><a>友情链接</a></li>
        <li><a target="_blank">支付方式</a></li>
        <li><a target="_blank">配送方式</a></li>
        <li><a>服务声明</a></li>
        <li><a>广告声明</a></li>
    </ul>
</div>
<div style="text-align: center;margin-top: 5px;margin-bottom:20px;">
    Copyright &copy;2016-2017 翡翠教育 版权所有
</div>

</body></html>




