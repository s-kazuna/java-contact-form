<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>確認画面</title>
	</head>
<body>
    <h1>入力内容の確認</h1>
		<form action="input" method="POST">
		    名前: <input type="text" name="onamae" required><br>
		    メール: <input type="email" name="mail_address" required><br>
		    性別: <input type="radio" name="sex" value="男性">男性
		          <input type="radio" name="sex" value="女性">女性<br>
		    お問い合わせ種別: 
		          <input type="checkbox" name="cates" value="製品について">製品について
		          <input type="checkbox" name="cates" value="サービスについて">サービスについて<br>
		          <input type="checkbox" name="cates" value="採用について">採用について
		          <input type="checkbox" name="cates" value="その他">その他<br>
		          
		    住まいエリア: 
		          <select name="pref">
		              <option value="北海道">北海道</option>
		              <option value="関東">関東</option>
		          </select><br>
		    内容: <textarea name="message" required></textarea><br>
		    <input type="submit" value="確認画面へ">
</form>