<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <meta charset="UTF-8">
    <title>Dummy Data Insert Page</title>
    <style>
        .wrap {
            width: 1100px;
            margin: 200px auto 0;
            text-align: center;
        }

        h2.title {
            margin: 5px;
            font-size: 34px;
            font-weight: 700;
        }

        h3.title {
            margin: 5px;
            font-size: 22px;
            font-weight: 700;
        }

        a.link {
            margin: 5px;
            line-height: 2em;
            font-size: 22px;
        }

        div.table-box {
            margin: 20px;
        }
    </style>
</head>

<%@ include file="../include/header.jsp" %>

<div class="wrap">
    <h2 class="title">DB 더미 데이터 입력용 페이지</h2> <br>
    <hr> <br>
    <div class="link-box">
        <div class="table-box">
            <h3 class="title">보드테이블 더미 데이터 넣기</h3> <br>
            <select name="cls" id="board">
                <option value="1">캠핑후기</option>
                <option value="2">꿀팁공유</option>
                <option value="3">메이트찾기</option>
                <option value="4">건의사항</option>
            </select>
            <button id="boardBtn">데이터 추가</button>
        </div>
        <hr>
        <div class="table-box">
            <h3 class="title">~~테이블 더미 데이터 넣기</h3> <br>
            <select name="cls" id="tableName">
                <option value="1">캠핑후기</option>
                <option value="2">꿀팁공유</option>
                <option value="3">메이트찾기</option>
                <option value="4">건의사항</option>
            </select>
            <button id="boardBtn">데이터 추가</button>
        </div>
        <!-- <a class="link" href="~">~테이블 더미 데이터 넣기</a> <br> -->
        <!-- <a class="link" href="~">~테이블 더미 데이터 넣기</a> <br> -->
    </div>
</div>

<script>
    window.onload = function () {

        document.querySelector('.link-box').addEventListener('click', e => {

            if (!e.target.matches('button')) {
                return;
            }

            const $sel = e.target.parentNode.querySelector('select');

            const table = $sel.id;

            const cls = $sel.options[$sel.selectedIndex].value;

            console.log('값 세팅.');

            if(table !== 'board') return;

            console.log(table);
            console.log(cls);

            const formData = new FormData();

            for (let i = 0; i < 20; i++) {
                formData.append('cls', cls);
                formData.append('writer', 'park1234');
                formData.append('title', cls + ' 카테고리 더미 글 ' + i);
                formData.append('content', cls + '카테고리의' + i + '번째 더미 텍스트입니다.');
                fetch('${pageContext.request.contextPath}/db/insert/' + table + '/' + cls, {
                    method : 'post',
                    body : formData
                })
            }

            console.log('반복문 끝.');
            alert(table + '테이블 더미 데이터 DB에 입력됨!');

        });

    };
</script>

<%@ include file="../include/footer.jsp" %>