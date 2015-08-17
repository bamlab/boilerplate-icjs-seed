angular.module '@@app_name.common'
.config ($stateProvider, $urlRouterProvider) ->

	$stateProvider.state("Root",
	  url: "/"
	  views:
	    "content@":
	      templateUrl: "common/views/landing.html"
	).state "Root.home",
	  url: "/"
	  views:
	    "appContent@Root":
	      templateUrl: "common/views/home.html"
