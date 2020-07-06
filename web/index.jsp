<%--
  Created by IntelliJ IDEA.
  User: WXY
  Date: 2020/7/2
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
  <title>My calculator</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
</head>

<form action="index.jsp" method="post">
  <table width="404" border="1">
  <tr>
    <td colspan="3">简单的计算器</td>
  </tr>
  <tr>
    <td>第一个数</td>
    <td>
      <input type="text" name="firstNum"/>
    </td>
  </tr>
  <tr>
    <td>选择操纵</td>
    <td>
      <select name="operator">
        <option value="+">+</option>
        <option value="-">-</option>
        <option value="*">*</option>
        <option value="/">/</option>
      </select>
    </td>
  </tr>

  <tr>
    <td>第二个数</td>
    <td>
      <input type="text" name="secondNum"/>
    </td>
  </tr>
  <tr>
    <td colspan="3">
      <input type="submit" value="计算"/>
    </td>
  </tr>

  </table>

</form>
</body>
</html>