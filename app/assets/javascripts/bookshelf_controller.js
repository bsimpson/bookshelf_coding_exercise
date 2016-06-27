angular.module('app.bookshelf', [])
  .controller('BookshelfController', [
      '$scope', '$http',
      function ($scope, $http) {
        $scope.loading = true;
        $http({
          method: 'GET',
          url: '/books.json'
        }).then(function(response) {
          $scope.loading = false;
          $scope.books = response.data;
        })
      }
    ]
  );