/**
 * Created by zhaochuxin on 16/2/24.
 */
(function(angular, data, _){
    // Your code should be here

    var myAPP = angular.module('mydetail', []);
    myAPP.controller('mainController', function($scope) {
        var  bookid= $(".bookid").html();
        $scope.books = data.books;
        var temp = $scope.books;
        if(!_.isNull(bookid))
            var temp = _.where($scope.books, {id: bookid});
        $scope.booksFiltered = temp;

    });
})(angular, data, _);

