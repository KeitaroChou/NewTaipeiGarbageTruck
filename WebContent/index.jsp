<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="idv.klaus.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">
<script src="bootstrap/js/bootstrap.min.js"></script>
<body>
<%
	GarbageTruckLiveDAO dao = new DBSelect_GTLive();
	ArrayList<GTLive> list = dao.regionalSearch_city("新店區");
%>
<table border="1" class="table">
<tr><th>路線編號</th><th>車牌號碼</th><th>最後定位時間</th><th>最後定位位置</th></tr>
<%
	for (GTLive gtl : list) {
%>
		<tr>
		<td><%=gtl.lineid %></td><td><%=gtl.car %></td><td><%=gtl.time %></td><td><%=gtl.location %></td>
		</tr>
<%
	}
%>
</table>
</body>
</html>