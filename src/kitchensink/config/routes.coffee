angular.module '@@app_name.kitchensink'
.config ($stateProvider) ->
  $stateProvider
  .state 'kitchensink',
    url: '/kitchensink'
    views:
      'content@':
        templateUrl: 'kitchensink/views/kitchensink.html'
