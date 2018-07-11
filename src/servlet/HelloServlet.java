package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io .PrintWriter;

public class HelloServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("处理doPost请求");
        response.setCharacterEncoding("UTF-8");    //设置响应的字符集格式为UTF-8
        response.setContentType("text/html");  //设置响应正文的MIME类型
        PrintWriter out = response.getWriter();    //返回一个PrintWriter对象，Servlet使用它来输出字符串形式的正文数据
        //以下为输出的HTML正文数据
        out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
        out.println("<HTML>");
        out.println("  <HEAD><TITLE>动态生成的HTML文档</TITLE></HEAD>");
        out.println("  <BODY>");
        out.println("    <table border='0' align='center'>");
        out.println("            <tr><td bgcolor='skyblue'colspan=2>动态生成HTML文档</td></tr>");
        out.println("     </table>");
        out.println("  </BODY>");
        out.println("</HTML>");
        out.flush();
        out.close();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("处理doGet请求");
        PrintWriter out=response.getWriter();
        response.setContentType("text/html;charset=utf-8");
        out.println("<strong>Hello Servlet!</strong><br>");
    }
}
