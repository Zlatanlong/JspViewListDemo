<%--
  Created by IntelliJ IDEA.
  User: zlatan
  Date: 2018/7/11
  Time: 上午10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小窗口</title>
</head>
<body>
<center>
    <form action="<%=request.getContextPath()%>/servet/Servlet" ethod="POST">
        <input type="submit"value="提交">
    </form>
</center>
</body>
</html>
