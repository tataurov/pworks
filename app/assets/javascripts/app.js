var app = angular.module('App', [
  'ngResource',
  'ngAnimate',
  'ui.router',
  'templates',
  'ngTagsInput',
  'ngLoadingSpinner',
  'ui.bootstrap'
]);

app.config(function ($stateProvider, $urlRouterProvider, $locationProvider) {
  $stateProvider
    .state('root', {
      url: '/',
      templateUrl: 'root/index.html'
    })
    .state('works', {
      url: '/works',
      templateUrl: 'works/index.html',
      controller: 'WorksController'
    })
    .state('about', {
      url: '/about',
      templateUrl: 'about/index.html',
      controller: 'AboutController'
    });

    // default fall back route
  $urlRouterProvider.otherwise('/');
  $locationProvider.html5Mode(true);
});
