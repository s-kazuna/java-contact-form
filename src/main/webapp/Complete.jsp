<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>送信完了</title>
		<link rel="stylesheet" href="css/css-layout.css">
	</head>
	<body>
		<h1>お問い合わせありがとうございます。</h1>
		
		<p>お名前: ${onamae}</p>
	    <p>メール: ${mail_address}</p>
	    <p>性別: ${sex}</p>
	   	<p>住まいエリア: ${pref}</p>
	    <p>お問い合わせ種別:
			<%
			    String[] cates = (String[])request.getAttribute("cates");
			    if (cates != null) {
			        out.print(String.join(", ", cates));
			    }
			%>
		<p>内容:<br><pre>${message}</pre></p>
		<c:forEach var="cate" items="${cates}">
            <input type="hidden" name="cates" value="${cate}">
        </c:forEach>
	</p>
		<a href="/Java_Contact_Form/Input.jsp">TOPへ戻る</a>
	</body>
</html>