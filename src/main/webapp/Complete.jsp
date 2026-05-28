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
		
		<p>お名前:${onamae }</p>
		<p>メールアドレス:${mail_address }</p>
		<p>住まいエリア: ${pref}</p>
		<p>お問い合わせ種別:</p>
            <%
            String[] cates = (String[])request.getAttribute("cates");
            if (cates != null) {
                out.print(String.join(", ", cates));
            }
       		%>
       		
    	<p>内容:<br><pre>${message}</pre></p>
		<div class = "message-layout">
			${message }
		</div>
		<a href="Java_Contact_Form/input.jsp">TOPへ戻る</a>
	</body>
</html>