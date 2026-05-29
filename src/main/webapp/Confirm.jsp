<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>確認画面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css">
</head>
<body>
    <div class="form">
        <h1>確認画面</h1>
        <form action="thanks" method="POST">
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
	       
				<input type="hidden" name="onamae" value="${onamae}">
			    <input type="hidden" name="mail_address" value="${mail_address}">
			    <input type="hidden" name="sex" value="${sex}">
			    <input type="hidden" name="pref" value="${pref}">
			    <input type="hidden" name="cates" value="${cates}">
			    <input type="hidden" name="message" value="${message}">
			        
		        <input type="submit" value="送信" class="submit-btn">
        </form>
    </div>
</body>
</html>