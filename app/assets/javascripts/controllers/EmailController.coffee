controllers = angular.module("controllers")
controllers.controller("EmailController", ["$scope", "userService",
	($scope, userService) ->
		$scope.generateAge = -> 
			ages = []
			i = 18 
			while i <= 60 
				ages.push i
				i++
			ages
		$scope.submit = ->
		 if $scope.myForm.$valid
		 	"submitted"
		 	$scope.condition = "true"
		 else
		 	"Invalid"
		 	$scope.condition = "false"

	])