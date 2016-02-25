<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html ng-app="myAPP">
  <head>

    <meta charset="utf-8">
    <title>fake douban</title>
    <script type="text/javascript" src="js/angular.min.js"></script>
  <script type="text/javascript" src="js/underscore.min.js"></script>
    <script type="text/javascript" src=" js/data.js"></script>
    <script type="text/javascript" src="js/app.js"></script>
      <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
   <link rel="stylesheet" type="text/css" href="css/reset.css" media="all"/>
   <link rel="stylesheet" type="text/css" href="css/style.css" media="all"/>
  </head>
  <body ng-controller="mainController" id='book'>
  <div id="shopcard">
      <h3>我的购物车</h3>
      <p id="shopname" ng-repeat="book in shopcard">书名:{{book.title}} 数目:{{book.count}} 价格:{{book.price}}</p>
      <p>总数:{{shopcard.length}}</p>
      <p>总价:{{bookprice}}</p>
      <%--<p>{{shopid}}</p>--%>
      <a href="shopcard.do?id=" name={{shopid}} class="change" ng-click="jishu()">进入购物车</a>
  </div>
     <h1>关于小说的书 (豆瓣)</h1>
     <div class='search'>
    按出版社排序
    <select id="book-publisher" ng-model="publisher_name"  ng-options="publisher for publisher in publishers" ng-change="change()">
      <option value="">--- 全部 ---</option>
     </select>
     按标签过滤
      <select class="select-tag" ng-model="tags_name" ng-options="tag for tag in tags" ng-change="change()">
            <option value="">--- 全部---</option>
          </select>
     <button id='search-btn' ng-click="toggle()">search</button>
   </div>

    <ul id="book-list">
      <li class="book" ng-repeat="book in booksFiltered">
          <a href="detail.do?id=" name={{book.id}} class="change"><img src="{{book.images.small}}" alt="{{book.title}}" /> </a>
          <div class="book-detail">
            <h4>{{book.title}}</h4>
            <p class="book-info">
              <span class="author" ng-repeat="author in book.author">{{author}}/</span>
              <span>{{book.publisher}}/</span>
            <span>{{book.price}}/</span>
            <span>{{book.pubdate}}</span>
            </p>
              <button ng-click="countAdd(book.id)" id="testshop">加入购物车</button>
          </div>

      </li>
    </ul>

  </body>
  <script type="text/javascript">
          var a =$(".change");
          a.each(function(index,element){
              element = $(element);
              element.prop("href",element.prop("href")+element.prop("name"));
          })
  </script>
</html>

