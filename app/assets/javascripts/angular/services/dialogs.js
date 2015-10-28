app.service('DialogService', function($modal, $rootScope){
  // Public: Open modal window
  // params:
  //   which: String, message type [error, wait, notify, confirm]
  //   header: String, text for header
  //   message: String, dialog content
  // Returns nothing
  this.show = function(which, header, message) {
      $rootScope.dialogService = {
          message: message,
          header: header,
          headerClass: '-' + which
        };

      this.dialog = $modal.open({
        // TODO: Different layouts for modal dialogs
        templateUrl: 'modal/simple_dialog.html',
        controller: 'ModalDialogController'
      });
    };
  })
  .controller('ModalDialogController', function($scope, DialogService) {
    $scope.close = function() {
      DialogService.dialog.close();
    }
  });