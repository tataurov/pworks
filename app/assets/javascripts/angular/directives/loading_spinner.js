angular.module('ngLoadingSpinner', ['angularSpinner'])
  .directive('usSpinner',   ['$http', '$rootScope' ,function ($http, $rootScope){
    return {
      link: function (scope)
      {
        $rootScope.spinnerActive = false;
        scope.isLoading = function () {
          return $http.pendingRequests.length > 0;
        };

        scope.$watch(scope.isLoading, function (loading)
        {
          $rootScope.spinnerActive = loading;
          $('#js-spinner-wrapper, #js-page-cover').toggleClass('active', !!loading)
        });
      }
    };
  }]);
