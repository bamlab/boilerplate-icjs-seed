angular.module '@@app_name'
.run ($ionicPlatform, $state) ->
  $ionicPlatform.ready ->
    StatusBar.styleDefault() if window.StatusBar
