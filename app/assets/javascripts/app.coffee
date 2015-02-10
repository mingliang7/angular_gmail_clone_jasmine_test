app = angular.module("myApp", [
	'ngRoute',
	'controllers',
	'templates',
	])
app.constant("VERSION", "1.0")
#-------alert---------------------
# app.run(["VERSION", "$rootScope",
# 	(VERSION, $rootScope) ->
# 	 alert(VERSION)
# 	 alert($rootScope)
# 	])
# --------------------------------
app.config(['$routeProvider',
	($routeProvider) ->
	 $routeProvider
	 	.when("/inbox",
	 			templateUrl: "index.html"
	 			controller: "InboxController"
	 		)
	 	.when("/inbox/email/:id",
	 			templateUrl: "email.html"
	 			controller: "EmailController"
	 		)
	 	.otherwise(
	 			redirectTo: "/inbox"
	 		)
])


controllers = angular.module("controllers", [])