<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/9
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@page import="pett.bean.masterInfo" %>
<%@page import="java.util.ArrayList" %>
<html>
<head>
    <title>修改宠物主人信息</title>
</head>
<body bgcolor="#ff95ab">
<center>
    <br><br><br>
    <h3>请修改宠物主人信息</h3>
    <form action="http://localhost:8080/UpdateMasterServlet" method="get">
        <table border="2" width="600">
            <%
            ArrayList al = (ArrayList)session.getAttribute("al");
            for (int i = 0;i<al.size();i++){
                masterInfo mi = (masterInfo)al.get(i);

            %>
            <tr>
                <td>ID</td>
                <td>
                    <input type="text" name="mrId"
                    value="<%=mi.getMrId()%> "readonly/>
                </td>
            </tr>

            <tr>
                <td>姓名</td>
                <td>
                    <input type="text" name="mrName"
                           value="<%=mi.getMrName()%>"/>
                </td>
            </tr>

            <tr>
                <td>性别</td>
                <td>
                    <input type="text" name="mrSex"
                           value="<%=mi.getMrSex()%>"/>
                </td>
            </tr>

            <tr>
                <td>年龄</td>
                <td>
                    <input type="text" name="mrAge"
                           value="<%=mi.getMrAge()%>"/>
                </td>
            </tr>

            <tr>
                <td>家庭住址</td>
                <td>
                    <input type="text" name="mrAddress"
                           value="<%=mi.getMrAdress()%>"/>
                </td>
            </tr>

            <tr>
                <td>电话</td>
                <td>
                    <input type="text" name="mrTel"
                           value="<%=mi.getMrTel()%>"/>
                </td>
            </tr>

            <tr>
                <td>宠物种类</td>
                <td>
                    <input type="text" name="mrPet"
                           value="<%=mi.getMrPet()%>"/>
                </td>
            </tr>

            <tr align="center">
                <td colspan="2">
                    <input name="sure" type="submit" value="修改">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input name="clear" type="reset" value="清空">
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
