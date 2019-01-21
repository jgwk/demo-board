<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/jsp/template/head.jsp" />

<div class="container" role="main">
    <div class="page-header">
        <h1>글 작성</h1>
    </div>
    
    <form action="/article/add" method="post">
    <div class="form-group">
        <label for="title">제목</label>
        <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요">
    </div>
    
    <div class="form-group">
        <label for="content">내용</label>
        <textarea class="form-control" id="content" name="content" style="resize: vertical;" rows="8"></textarea>
    </div>
    
    <p>
        <button class="btn btn-default">저장</button>
        <a class="btn btn-default" href="/article/list" role="button">목록</a>
    </p>
    </form>
    
</div>

<jsp:include page="/WEB-INF/jsp/template/foot.jsp" />
