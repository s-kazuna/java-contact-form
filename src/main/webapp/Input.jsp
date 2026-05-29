<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>お問い合わせ</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css">
</head>
<body>
    <h1>お問い合わせ</h1>
    <form action="confirm" method="POST">
        <div class="form">
            
            <div class="form-group">
                <label>名前</label>
                <input type="text" name="onamae" class="form-control" required>
            </div>

            <div class="form-group">
                <label>メール</label>
                <input type="email" name="mail_address" class="form-control" required>
            </div>

            <div class="form-group">
                <label>性別</label>
                <input type="radio" name="sex" value="男性"><span class="radio-label">男性</span>
                <input type="radio" name="sex" value="女性"><span class="radio-label">女性</span>
            </div>

            <div class="form-group">
                <label>住まいエリア</label>
                <select name="pref" class="form-control">
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

            <div class="form-group">
                <label>お問い合わせ種別</label>
                <input type="checkbox" name="cates" value="製品について"><span class="check-label">製品について</span>
                <input type="checkbox" name="cates" value="サービスについて"><span class="check-label">サービスについて</span>
                <input type="checkbox" name="cates" value="採用について"><span class="check-label">採用について</span>
                <input type="checkbox" name="cates" value="その他"><span class="check-label">その他</span>
            </div>

            <div class="form-group">
                <label>内容</label>
                <textarea name="message" class="form-control" required></textarea>
            </div>

            <input type="submit" value="確認画面へ" class="submit-btn">
        </div>
    </form>
</body>
</html>