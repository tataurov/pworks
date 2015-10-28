app.factory('WorksData', function ($resource) {
  return $resource("/api/works/:action/", {action: ''}, {
    index:   { method: 'GET', isArray: false, responseType: 'json' },
    tags:   { method: 'GET', params:{action: 'tags'}, isArray: false, responseType: 'json' }
  });
});

app.controller('WorksController', function ($scope, DialogService) {

});
