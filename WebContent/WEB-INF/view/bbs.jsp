<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="style.css">
<title>bbs</title>
</head>
<body>
<div class="container">
<h1 class="page-header">つぶやき広場</h1>
    <div class="row">
        <div class="col-md-7">
            <p>メッセージの投稿</p>
            <form action="" method="post">
<div class="form-group" >
    <label for="user">名前：</label>
    <input type="text" name="user" id="user" class="form-control">
</div>
    <div class="form-group">
        <label for="body">メッセージ</label>
        <input type="text" name="body" id="body" class="form-control">
    </div>
    <p>
        <input type="submit" value="つぶやく" class="btn btn-primary">
    </p>
            </form>
        </div>
        <div class="col-md-5">
            <c:forEach items="${messageList}" var="message">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <p class="nameDate">
                            <c:out value="${message.user}"></c:out>
                            <fmt:formatDate value="${message.posted}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
                        </p>
                        <p><c:out value="${message.body}"></c:out></p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>