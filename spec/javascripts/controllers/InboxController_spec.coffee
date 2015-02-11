describe 'InboxController', ->
	ctrl = null
	scope = null
	httpBackend = null
	userService = null
	setup = (users)->
		inject ($rootScope,$controller, $httpBackend, _userService_) ->
			scope = $rootScope.$new()
			userService = _userService_
			httpBackend = $httpBackend
			httpBackend.expectGET("./users.json").respond(users)
			ctrl = $controller("InboxController",
																		$scope: scope
																		)
	beforeEach(module('myApp'))
	describe 'Users', ->
		beforeEach ->
			users =[
				{name: "Thkeam"},
				{name: "Reaksmey"}
			]
		 setup(users)
		 httpBackend.flush()
		it 'fetch user from users.json', ->
			expect(scope.users).toEqualData(userService.getAllUsers()) 

			
		 
	  
	  