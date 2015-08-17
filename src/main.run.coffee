angular.module '@@app_name'
.run ($ionicPlatform, $state) ->
  $ionicPlatform.ready ->
    $state.go "Root.home"
