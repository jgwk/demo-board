<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="/WEB-INF/jsp/template/head.jsp" />

<div class="container">
    <div class="page-header">
        <h1>글 작성</h1>
    </div>
    
    <table class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col" class="text-center" style="width: 10%">#</th>
                <th scope="col" class="text-center" style="width: 25%">title</th>
                <th scope="col" class="text-center">content</th>
            </tr>
        </thead>
        
        
        <tbody>
            <c:choose>
            <c:when test="${empty article}">
            <tr>
                <td colspan="3" class="text-center">첫 게시물을 등록해주세요.</td>
            </tr>
            </c:when>
            <c:otherwise>
            <c:forEach items="${article}" var="article">
            <tr class="clickable-row" data-href="/">
                <th scope="row" class="text-center">${article.id}</th>
                <td>${article.title}</td>
                <td>${article.content}</td>
            </tr>
            </c:forEach>
            </c:otherwise>
            </c:choose>
        </tbody>
        
        
    </table>
    <a class="btn btn-default" href="/article/add" role="button">글쓰기</a>
</div>

<jsp:include page="/WEB-INF/jsp/template/foot.jsp" />
