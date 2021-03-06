<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<html>
<head>
    <title>管理员首页</title>
    <meta charset="UTF-8" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui/css/layui.css"  media="all">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo" style="margin-left: 600px;color:#3F9F00;">丁丁医生</div>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    管理员
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" onclick="showTab('${pageContext.request.contextPath}/page_admin/updatePwd')">修改密码</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="javascript:;" onclick="logout()">注销</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-shrink="all" lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">医生管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" onclick="showTab('${pageContext.request.contextPath}/page_admin/doctorList')">医生列表</a></dd>
                        <dd><a href="javascript:;" onclick="showTab('${pageContext.request.contextPath}/page_admin/addDoctor')">添加医生</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">科室</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" onclick="showTab('${pageContext.request.contextPath}/page_admin/ksList')">科室列表</a></dd>
                        <dd><a href="javascript:;" onclick="showTab('${pageContext.request.contextPath}/page_admin/addKs')">添加科室</a></dd>
                        <dd><a href="javascript:;" onclick="showTab('${pageContext.request.contextPath}/page_admin/PChart')">医生人数</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">患者管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" onclick="showTab('${pageContext.request.contextPath}/page_admin/PatientList')">患者列表</a></dd>
                        <dd><a href="javascript:;" onclick="showTab('${pageContext.request.contextPath}/page_admin/addPatient')">添加患者</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">药品管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" onclick="showTab('${pageContext.request.contextPath}/page_admin/medicineList')">药品列表</a></dd>
                        <dd><a href="javascript:;" onclick="showTab('${pageContext.request.contextPath}/page_admin/addMedicine')">添加药品</a></dd>
                        <dd><a href="javascript:;" onclick="showTab('${pageContext.request.contextPath}/page_admin/MChart')">库存不足</a></dd>
                    </dl>
                </li>

            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <%--<iframe frameborder="0" id="iframe" width="100%" height="100%"></iframe>--%>
        <iframe frameborder="0" id="iframe" src="${pageContext.request.contextPath}/page_patient/welcome" width="100%" height="100%"></iframe>


    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - shdx hospital system
    </div>
</div>
<script src="${pageContext.request.contextPath}/static/js/jquery/jquery-2.1.0.min.js"></script>
<script src="${pageContext.request.contextPath}/static/layui/layui.js"></script>
<script>
    var layer;
    //JavaScript代码区域
    layui.use(['element','layer'], function(){
        var element = layui.element
            ,layer=layui.layer;

    });
    function showTab(src) {
        $("#iframe").attr("src", src)
    }
    //注销系统
    function logout() {
        layer.confirm('真的要注销系统吗?', function(){
            location.href="${pageContext.request.contextPath}/"
        });
    }

</script>
</body>
</html>
