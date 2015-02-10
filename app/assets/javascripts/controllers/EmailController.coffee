controllers = angular.module("controllers")
controllers.controller("EmailController", ["$scope",
	($scope) ->
		$scope.title = "Welcome to Email page"
	])