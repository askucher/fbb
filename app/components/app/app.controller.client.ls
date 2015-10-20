angular.module(\app).controller \app, ($scope, $xonom)->
  $xonom.app.test (err, data)->
    $scope.fromServer = data