<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.net.URLEncoder" %>
<%@ page import = "java.net.URLDecoder" %>
<%
	Cookie cookie = new Cookie("name", URLEncoder.encode("올찬", "utf-8"));
	response.addCookie(cookie);
%>
<html>
<head><title>쿠키생성</title></head>
<body>

<%= cookie.getName() %> 쿠키의 값 = "<%= URLDecoder.decode(cookie.getValue(), "utf-8") %>"

</body>
</html>