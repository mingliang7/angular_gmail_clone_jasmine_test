controllers = angular.module("controllers")
controllers.controller("InboxController", ['$scope','VERSION', 'userService', '$http'
	($scope, VERSION, userService, $http) ->
		$http.get('./users.json').success (users) ->
			userService.setAllUsers(users)
			$scope.users = userService.getAllUsers()
		$scope.version = VERSION
		
		$scope.description = ->
			"This is Function in description"
		$scope.setColors = ->
			$scope.values = ["Red", "Green", "Blue", "Orange", "Yellow"]

		$scope.setStates= ->
			$scope.values = ["LA", "Miami", "NY", "Washington", "Hawaii"]
		
		$scope.getValues = ->
			$scope.values

])