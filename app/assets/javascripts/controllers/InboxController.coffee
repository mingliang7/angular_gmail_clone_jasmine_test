controllers = angular.module("controllers")
controllers.controller("InboxController", ['$scope','VERSION'
	($scope, VERSION) -> 
		$scope.version = VERSION
		$scope.description = ->
			"This is Function in description"

])