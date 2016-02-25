<%@ page import="java.util.IntSummaryStatistics" %><%--
  Created by IntelliJ IDEA.
  User: zhaochuxin
  Date: 16/2/25
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html ng-app="myshopcard">
<head>
    <title>shopcard</title>
    <script type="text/javascript" src="js/angular.min.js"></script>
    <script type="text/javascript" src="js/underscore.min.js"></script>
    <script type="text/javascript" src=" js/data.js"></script>
    <script type="text/javascript" src="js/shopcard.js"></script>
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/shopcard.css" media="all"/>
</head>
<body ng-controller="mainController" id='book'>
<h4 id="shopcard"><p>总价:</p>{{bookprice}}元<br><br><a href="successsubmit.do">提交</a></h4>

<%
int temp=Integer.parseInt(request.getParameter("id"))/10;
    for(int i=1;i<=temp;i++){%>
    <h5 ng-model="bookid" class="bookid"><%=request.getParameter("id"+i)%></h5>
<%}%>
<ul id="book-list">
    <li class="book" ng-repeat="book in booksFiltered">
        <img src="{{book.images.small}}" alt="{{book.title}}" />
            <h4>{{book.title}}</h4>
            <p class="book-info">
                <span class="author" ng-repeat="author in book.author">{{author}}/</span>
                <span>{{book.publisher}}/</span>
                <span>{{book.price}}/</span>
                <span>{{book.pubdate}}/</span>
                <span>{{book.price}}</span>
                 <p >数目:{{book.count}}</p>
                <button ng-click="add(book.key)">+</button><button ng-click="sub(book.key)">-</button>
            </p>
        </div>

    </li>
</ul>

</body>
</html>
