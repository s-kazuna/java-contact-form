<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head><title>確認画面</title></head>
<body>
    <h2>入力内容の確認</h2>
    <p>お名前: ${oname}</p>
    <p>メール: ${mail_address}</p>
    <p>性別: ${sex}</p>
    <p>お問い合わせ種別: 
        <%-- 配列を展開して表示 --%>
        ${cates != null ? String.join(", ", cates) : ""}
    </p>
    <p>住まいエリア: ${pref}</p>
    <p>内容:<br><pre>${message}</pre></p>

    <form action="thanks" method="POST">
        <input type="hidden" name="onamae" value="${oname}">
        <input type="hidden" name="mail_address" value="${mail_address}">
        <input type="hidden" name="sex" value="${sex}">
        <c:forEach var="cate" items="${cates}">
            <input type="hidden" name="cates" value="${cate}">
        </c:forEach>
        <input type="hidden" name="pref" value="${pref}">
        <input type="hidden" name="message" value="${message}">

        <input type="button" value="戻る" onclick="history.back()">
        <input type="submit" value="送信">
    </form>
</body>
</html>