<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <title>送信完了</title>
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css">
   	</head>
		<body>
			<h1>送信完了</h1>
			
			<div class="form">
				<div class="form-group">
				    <label>名前</label>
				    <p class="form-control">${onamae}</p>
		        </div>
		        <div class="form-group">
		            <label>メール</label>
		            <p class="form-control">${mail_address}</p>
		        </div>
		        <div class="form-group">
		            <label>性別</label>
		            <p class="form-control">${sex}</p>
		        </div>
		        <div class="form-group">
		            <label>住まいエリア</label>
		            <p class="form-control">${pref}</p>
		        </div>
		        <div class="form-group">
		            <label>お問い合わせ種別</label>
		            <p class="form-control">${cates}</p>
		        </div>
		        <div class="form-group">
		            <label>内容</label>
		            <p class="form-control pre-wrap">${message}</p>
				</div>

		        <div class="complete-message">
			        <p>お問い合わせありがとうございました。<br>担当者より順次ご連絡いたします。</p>
			    </div>
			</div>
			<form action="input.jsp" method="get">
				<input type ="submit" value ="TOPへ戻る" class ="submit-btn">
	        </form>
		</body>
</html>