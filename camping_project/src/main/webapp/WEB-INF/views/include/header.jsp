<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>We Go Camping</title>
    <!-- Bootstrap css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header-style.css">
</head>

<body>
    <header>
        <div class="section">
            <img class="logo" src="${pageContext.request.contextPath}/resources/img/logo.png" alt="logo">
            <div class="title" class="clearfix">Camping</div>

            <div class="menu clearfix">
                <div class="menu-down">
                    <a href="#" class="in-menu" id="reservation">예약하기</a>                    
                </div>                
                <div class="menu-down"><a href="#" class="in-menu" id="view">캠핑장 둘러보기</a></div>
                <div class="menu-down"><a href="#" class="in-menu" id="board">게시판</a></div>
                
                
                
                <!-- <div class="in-menu" id="reservation">예약하기</div>
                <div class="in-menu" id="view">캠핑장 둘러보기</div>
                <div class="in-menu" id="board">게시판</div> -->
            </div>
            <div class="header-right">
                <input type="text" class="search clearfix" placeholder="검색어를 입력하세요.">
                <div class="profile">
                    <img class="profile-img" src="${pageContext.request.contextPath}/resources/img/profile.png" alt="profile">
                    <a href="#" class="user">홍길동님</a>
                </div>
            </div>
        </div>
        <div class="section-dropdown">

        </div>
        <div></div>
    </header>