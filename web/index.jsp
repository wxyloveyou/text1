<%--
  Created by IntelliJ IDEA.
  User: WXY
  Date: 2020/7/2
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
  <title>My calculator</title>
</head>
<body style="text-align:center;">
<form action="index.jsp" method="post">
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
        <option value="+">+/<option>
        <option value="-">-</option>
        <option value="*">*<option>
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