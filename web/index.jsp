<%--
  Created by IntelliJ IDEA.
  User: zlatan
  Date: 2018/7/10
  Time: 下午7:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ page import="entity.Items" %>
<%@ page import="dao.ItemsDAO" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<link rel="stylesheet" type="text/css" href="css/index_css.css">

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
      -->


</head>

<body>
<h1><a href="index.jsp">商品lllly展示</a></h1>
<hr>

<center>
    <table width="750" height="60" cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td>

                <!-- 商品循环开始 -->
                <%
                    ItemsDAO itemsDao = new ItemsDAO();
                    ArrayList<Items> list = itemsDao.getAllItems();
                    if (list != null && list.size() > 0) {
                        for (int i = 0; i < list.size(); i++) {
                            Items item = list.get(i);
                %>
                <div class="listdiv">
                    <div class="port-2 effect-1">
                        <div class="image-box">
                            <img src="images/<%=item.getPicture()%>" ;alt="Image-1" class="lysrc">
                        </div>
                        <div class="text-desc"
                             style="background:url(images/<%=item.getPicture()%>);background-size: 100% 100%;;width:200px ;height:180px">
                            <center><a href="details.jsp?id=<%=item.getId()%>" class="cdbtn"><%=item.getName() %>
                            </a></center>
                            <center><p style="color:#ff5565;font-size:20px;"><%=item.getName()%></p></center>
                        </div>
                    </div>
                    <!--
                    <dl>
                        <dt>
                            <a href="details.jsp?id=<%=item.getId()%>"><img src="images/<%=item.getPicture()%>"
                                                                            width="120" height="90" border="1"/></a>
                        </dt>
                        <dd class="dd_name"><%=item.getName() %>
                        </dd>
                        <dd class="dd_city">产地:<%=item.getCity() %>&nbsp;&nbsp;价格:￥ <%=item.getPrice() %>
                        </dd>
                    </dl>
                    -->
                </div>
                <!-- 商品循环结束 -->

                <%
                        }
                    } else {
                        out.print("商品正在上架中......");
                    }
                %>
            </td>
        </tr>
    </table>
</center>
</body>
</html>