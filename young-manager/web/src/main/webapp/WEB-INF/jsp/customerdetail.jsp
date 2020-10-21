<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <title>独墅湖高教区课程资源共享平台</title>


    <link rel="stylesheet" href="css/k-style.css">
    <link rel="stylesheet" href="css/swiper.min.css">
    <link rel="stylesheet" href="css/h-school.css">
    <link rel="stylesheet" href="layui/css/layui.css"/>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="bootstrap.min.css">
    <script src="layui/layui.js"></script>
    <script src="js/html5shiv.min.js" type="text/javascript"></script>
    <script src="js/selectivizr.min.js" type="text/javascript"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list${page}").addClass("active");
        });

    </script>

</head>
<body>



<div class="layui-carousel" id="bg-item">
    <div class="layui-header title">
        <div class="layui-container">
            <div class="layui-logo layui-pull-left">
                <img src="img/frontpagelogo.png" width="360px">
            </div>

            <div class="personalCenter layui-pull-right">
                <a class="operation"><a class="operation" href="index" target="_blank" style="color:#fff"><i class="layui-icon layui-icon-read"></i>&nbsp;回首页</a></a>
            </div>

            <div class="personalCenter layui-pull-right">
                <a class="operation"><a class="operation" href="school" target="_blank" style="color:#fff"><i class="layui-icon layui-icon-read"></i>&nbsp;院校</a></a>
            </div>
        </div>
    </div>
</div>

<br> <br><br>


<div class="layui-container layui-pull-center" style="margin-bottom: 30px;width: 1300px;">
    <%--<br>        <br>        <br>        <br>--%>

    <%--<fieldset class="layui-elem-field ">--%>

        <%--<legend>--%>
            <%--<p  style="font-size: 25px;">展示</p>--%>
        <%--</legend>--%>

        <%--<div class="layui-field-box " style="background: rgba(255,255,255,1);">--%>
            <%--<br>--%>
            <%--<div class="img" align="center">--%>
                <%--<img src="img/dnxiaohui.png"  >--%>
            <%--</div>--%>

            <%--<br>--%>
            <%--<p><p style="font-size: 16px;line-height: 25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></p>--%>
            <%--<br>--%>
            <%--<br>--%>
        <%--</div>--%>

    <%--</fieldset>--%>

    <%--<br><br><br>--%>
    <fieldset class="layui-elem-field ">

        <%--<legend>--%>
            <%--<p  style="font-size: 25px;">展示</p>--%>
        <%--</legend>--%>

        <div class="layui-field-box layui-bg-gray"  >
            <div class="course wCenter">
                <div class="detail">
                    <ul>
                        <c:forEach items="${customers}" var="c">
                            <li>
                                    <div class="status">
                                        <p ><span>票据号：${c.loanserialno}</span></p>
                                        <p ><span>身份证号：${c.certid}</span></p>
                                        <p ><span>逾期天数：${c.overdueday}</span></p>
                                        <p ><span>总逾期天数：${c.sumoverdueday}</span></p>
                                        <p ><span>婚姻：${c.marriage}</span></p>
                                        <p ><span>性别：${c.sex}</span></p>
                                    </div>
                            </li>
                        </c:forEach>

                    </ul>

                </div>
            </div>
        </div>

    </fieldset>
</div>

<div class="page_wrap">
    <div class="page_min">
        <ul>
            <%--第一页之后都有上一页--%>
            <c:if test="${page>1}">
                <li style="margin-right: 10px;"><a href="${pageContext.request.contextPath}/customerdetail?page=${page-1}&limit=20" class="next">上一页</a></li>

            </c:if>

            <li class="" id="list1"><a  href="${pageContext.request.contextPath}/customerdetail?page=1&limit=20" id="h1">1</a></li>
            <li class="" id="list2"><a  href="${pageContext.request.contextPath}/customerdetail?page=2&limit=20">2</a></li>
            <li class="" id="list3"><a  href="${pageContext.request.contextPath}/customerdetail?page=3&limit=20">3</a></li>
            <li class="" id="list4"><a  href="${pageContext.request.contextPath}/customerdetail?page=4&limit=20">4</a></li>
            <li class="" id="list5"><a  href="${pageContext.request.contextPath}/customerdetail?page=5&limit=20">5</a></li>
            <li class="" id="list6"><a  href="${pageContext.request.contextPath}/customerdetail?page=6&limit=20">6</a></li>

            <%--第六页之前都有下一页--%>
            <c:if test="${page<6}">
                <li style="margin-right: 10px;"><a href="${pageContext.request.contextPath}/customerdetail?page=${page+1}&limit=20" class="next" >下一页</a></li>

            </c:if>
        </ul>
    </div>
</div>

</div>

<div class="parterner wCenter" >

    <div class="footer">
        <div class="wCenter">
            <div class="left">
                <h5 class="black_color">独墅湖高教区课程资源共享平台</h5>
                <p>课程内容版权均归课程内容提供者(机构)所有</p>
            </div>
            <div class="center">
                <dl>
                    <dt><a class="black_color" href="#">-平台介绍</a></dt>
                    <dt><a class="black_color" href="#">-帮助中心</a></dt>
                    <dt><a class="black_color" href="#">-联系我们</a></dt>
                </dl>
            </div>
            <div class="right">
                <p class="black_color">主管单位：东南苏州研究院</p>
                <p class="black_color">主办单位：独墅湖高教区课程资源共享平台管理中心</p>
                <p class="black_color">承办单位：Young项目组</p>
            </div>
        </div>
    </div>
</div>

</body>
<%--<script src="js/"></script>--%>


</html>