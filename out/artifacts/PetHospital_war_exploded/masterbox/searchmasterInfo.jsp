<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/9
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@page import="pett.bean.masterInfo" %>
<%@page import="java.util.ArrayList" %>
<html>
<head>
    <title>宠物主人信息</title>
</head>
<body bgcolor="#ff95ab">
<center>
    <br><br><br>
    <h3>宠物主人信息</h3>
    <form action="http://localhost:8080/SearchMasterServlet" method="get">
        <table border="2" width="600">
            <%
                ArrayList al = (ArrayList)session.getAttribute("al");
                for (int i = 0;i<al.size();i++){
                    masterInfo mi = (masterInfo)al.get(i);

            %>
            <tr>
                <td>ID</td>
                <td>
                    <%=mi.getMrId()%>
                </td>
            </tr>

            <tr>
                <td>姓名</td>
                <td>
                    <%=mi.getMrName()%>
                </td>
            </tr>

            <tr>
                <td>性别</td>
                <td>
                    <%=mi.getMrSex()%>
                </td>
            </tr>

            <tr>
                <td>年龄</td>
                <td>
                    <%=mi.getMrAge()%>
                </td>
            </tr>

            <tr>
                <td>家庭住址</td>
                <td>
                    <%=mi.getMrAdress()%>
                </td>
            </tr>

            <tr>
                <td>电话</td>
                <td>
                    <%=mi.getMrTel()%>
                </td>
            </tr>

            <tr>
                <td>宠物种类</td>
                <td>
                    <%=mi.getMrPet()%>
                </td>
            </tr>
            <%
                }
            %>



        </table>
    </form>
</center>
</body>
</html>
