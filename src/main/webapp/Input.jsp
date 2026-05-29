<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>お問い合わせ</title>
		<link rel="stylesheet" href="css/css-layout.css">
	</head>
<body>
    <h1>お問い合わせ</h1>
		<form action="confirm" method="POST">
		<div class ="form">
		
			<div class ="form-groupe">
				<label>名前</label>
					<input type="text" name="onamae" required>
		    </div>
		    <div class ="form-groupe">
		   		<label>メール</label>
					<input type="email" name="mail_address" required>
			</div>
		    <div class ="form-groupe">
			    <label>性別</label>
					<input type="radio" name="sex" value="男性">男性
					<input type="radio" name="sex" value="女性">女性
			</div>
			<div class ="form-groupe">
				<label>お住まいのエリア</label>
			          <select name="pref">
			              <option value="北海道">北海道</option>
			              <option value="東北">東北</option>
			              <option value="関東">関東</option>
			              <option value="中部">中部</option>
			              <option value="近畿">近畿</option>
			              <option value="中国">中国</option>
			              <option value="四国">四国</option>
			              <option value="九州・沖縄">九州・沖縄</option>
			          </select>
	        </div>
	        <div class ="form-groupe">
	         	<label>お問い合わせ種別</label>
			          <input type="checkbox" name="cates" value="製品について">製品について
			          <input type="checkbox" name="cates" value="サービスについて">サービスについて
			          <input type="checkbox" name="cates" value="採用について">採用について
			          <input type="checkbox" name="cates" value="その他">その他
			</div>
			<div class ="form-groupe">
				<label>お問い合わせ内容</label>
			    	<textarea name="message" required></textarea>
	    	</div>
			    <input type="submit" value="確認画面へ">
	    </div>
</form>