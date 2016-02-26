/**
 * Created by zhaochuxin on 16/2/24.
 */
(function(angular, data, _){
    // Your code should be here

    var myAPP = angular.module('myshopcard', []);
    myAPP.controller('mainController', function($scope) {
        $scope.bookprice=0;
        $scope.count=1;
        $scope.books = data.books;
        $scope.booksFiltered = [];
        $(".bookid").each(function(){
            var temp = _.where($scope.books, {id: $(this).html()});
            $scope.booksFiltered.push(temp[0]);
            $scope.bookprice+=parseFloat(temp[0].price);
        });
        $.each($scope.booksFiltered, function(n,value){
            $scope.booksFiltered[n].count = 1;
            $scope.booksFiltered[n].key = n;
        });
        $scope.add = function(key)
        {
            $scope.booksFiltered[key].count++;
            $scope.bookprice+=parseFloat($scope.booksFiltered[key].price);
        }
        $scope.sub = function(key)
        {
            $scope.bookprice-=parseFloat($scope.booksFiltered[key].price);
            if($scope.bookprice<0)$scope.bookprice=0;
            if($scope.booksFiltered[key].count == 1){
                $scope.booksFiltered.splice(key, 1);
                $.each($scope.booksFiltered, function(n,value){
                    $scope.booksFiltered[n].key = n;
                });

            }else{
                $scope.booksFiltered[key].count--;
            }
        }
    });
})(angular, data, _);

