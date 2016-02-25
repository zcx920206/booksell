<%--
  Created by IntelliJ IDEA.
  User: zhaochuxin
  Date: 16/2/24
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html ng-app="mydetail">
<head>
    <title>detail</title>
    <script type="text/javascript" src="js/angular.min.js"></script>
    <script type="text/javascript" src="js/underscore.min.js"></script>
    <script type="text/javascript" src=" js/data.js"></script>
    <script type="text/javascript" src="js/detailbook.js"></script>
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/detail.css" media="all"/>
</head>
<body ng-controller="mainController" id='book'>
<h1>关于小说的书 (豆瓣)</h1>
<h5 ng-model="bookid" class="bookid">${requestScope.id}</h5>
<div>
    <ul id="book-list">
        <li class="book" ng-repeat="book in booksFiltered">
            <h2>书名:{{book.title}}</h2>
            <img src="{{book.images.large}}" alt="{{book.title}}" />
            <hr />

            <div class="book-detail">
                <h2>详细信息:</h2>
                <p class="book-info">
                    <p class="author" ng-repeat="author in book.author">作者:{{author}}</p>

                    <p>出版社:{{book.publisher}}</p>
                    <p>价格:{{book.price}}</p>
                    <p>出版日期:{{book.pubdate}}</p>
                     <p>类型:{{book.subtitle}}</p>
                <p>页数:{{book.pages}}</p>
                <p>id:{{book.id}}</p>
                <p>特点:</p>
                <p class="name" ng-repeat="name in book.tags">{{name.name}}</p>
                <p>{{book.author_intro}}</p>
                </p>
            </div>

        </li>
    </ul>

</body>
</html>
