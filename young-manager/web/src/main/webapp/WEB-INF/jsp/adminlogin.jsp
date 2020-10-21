<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


    <meta charset="UTF-8">
    <link rel="stylesheet" href="/layui/css/layui.css"/>
    <script type="text/javascript" src="/js/jquery-easyui-1.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="/js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="/js/common.js"></script>
    <script src="layui/layui.js"></script>

    <title>管理员登录</title>

</head>
<body style="background-color: #F3F3F3">

    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 150px;margin-left: 530px;">
        <legend>管理员登录</legend>
    </fieldset>

    <form class="layui-form layui-form-pane" action=""  style="margin-left: 500px;">

        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                    <input type="text" id="adminname" lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>


        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-inline">
                <input type="password" id="adminpsw" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">密码包含大小写字母</div>
        </div>

        <div class="layui-form-item" style="margin-left: 60px;">
                <button id="login" class="layui-btn" lay-submit lay-filter="formDemo">确定</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>

    </form>


    <script type="text/javascript">
        $("#login").click(function(){
            var username = $("#adminname").val();
            var password = $("#adminpsw").val();
            console.log("-------------------------------------------------");
            console.log("username: ",username);
            console.log("password: ",password);
            $.post("/check/"+username+"/"+password,function (data) {
                if(data.status == 200){
                    window.location.href="admin";
                }else if(data.status == 404){
                    alert("输入的密码或用户名有错！");
                    //layer.msg("请填写所有表单");
                    window.location.href="adminlogin";
                }
            });
        });
    </script>
</body>
</html>