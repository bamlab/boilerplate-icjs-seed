angular.module '@@app_name.auth'
.config ($stateProvider) ->
  $stateProvider
  .state 'auth',
    url: '/auth'
    abstract: true

  .state 'auth.landing',
    url: '/landing'
    cache: false
    views:
      'content@':
        templateUrl: 'auth/views/landing.html'
        controller: 'LandingCtrl'

  .state 'auth.login',
    url: '/login'
    cache: false
    views:
      'content@':
        templateUrl: 'auth/views/login.html'
        controller: 'LoginCtrl'

  .state 'auth.register',
    url: '/register'
    cache: false
    views:
      'content@':
        templateUrl: 'auth/views/register.html'
        controller: 'RegisterCtrl'
