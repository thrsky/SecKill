<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="common/tag.jsp"%>
<html>
<head>
    <title>秒杀详情页</title>
    <jsp:include page="common/head.jsp"></jsp:include>
</head>
<body>
<div class="container">
    <div class="panel panel-default text-center">
        <div class="panel-heading">
            <h1>
                ${seckill.name}
            </h1>
        </div>
        <div class="panel-body">
            <h2 class="text-danger">
                <!-- 显示Time图标 -->
                <span class="glyphicon glyphicon-time"></span>
                <!-- 倒计时 -->
                <span class="glyphicon" id="seckill-box"></span>
            </h2>
        </div>
        <div class="panel-body">
            <h2>
                <span class="glyphicon" id="go-index"></span>
            </h2>
        </div>
    </div>
</div>
<div id="killPhoneModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title text-center">
                    <span class="glyphicon glyphicon-phone"></span>
                    秒杀电话
                </h3>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-2"></div>
                    <div class="col-xs-8">
                        <input type="text" name="killPhone" id="killPhoneKey"
                               placeholder="手机号^o^" class="form-control"/>
                    </div>
                    <div class="col-xs-2"></div>
                </div>
            </div>
            <div class="modal-footer">
                <!-- 验证信息 -->
                <span id="killPhoneMessage" class="glyphicon"></span>
                <button type="button" id="killPhoneBtn" class="btn btn-success">
                    <span class="glyphicon glyphicon-phone"></span>
                    Submit
                </button>
            </div>
        </div>
    </div>
</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://cdn.bootcss.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <!-- cookie -->
    <script src="https://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.js"></script>
    <!-- 倒计时 -->
    <script src="https://cdn.bootcss.com/jquery.countdown/2.2.0/jquery.countdown.js"></script>
    <!-- 开始编写交互逻辑 -->
    <script src="/resources/script/seckill.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            //使用EL表达式 传入参数
            seckill.detail.init({
                seckillId:${seckill.seckillId},
                startTime:${seckill.startTime.time},
                endTime:${seckill.endTime.time}
            });
        });
    </script>
</body>
</html>
