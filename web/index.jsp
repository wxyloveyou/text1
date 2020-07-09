<%--
  Created by IntelliJ IDEA.
  User: WXY
  Date: 2020/7/2
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

  <title>My calculator</title>
    <style type="jisuan/css">
      body{
        margin: 0px;
        padding: 0px;
        text-align: center;
      }
      form{
        margin-left:500px;
      }
    </style>
</head>

<body style="text-align:center;">
<jsp:useBean id="caculate" class="jisuan.caculate"></jsp:useBean>
<jsp:setProperty name="caculate" property="*"/>
<%
  try{
    caculate.calculate();
  }
  catch(Exception e){

    out.write(e.getMessage());
  }
%>
<br/>-----------------------------------------------------<br/>
    计算结果是：
<jsp:getProperty name="caculate" property="firstNum"/>
<jsp:getProperty name="caculate" property="operator"/>
<jsp:getProperty name="caculate" property="secondNum"/>
=
<jsp:getProperty name="caculate" property="result"/>
<br/>-----------------------------------------------------<br/>
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