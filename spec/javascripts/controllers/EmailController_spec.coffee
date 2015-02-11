describe 'EmailController', ->
	ctrl = null
	scope = null
	tpl = "<form name='myForm'>"
	myForm = null
 userService = null
	name = null
	setup = (userName)->
		inject ($rootScope,$controller, $compile, _userService_) ->
			scope = $rootScope.$new()
			myForm = $compile(tpl)(scope)
   userService = _userService_
   name = _userService_.setCurrentUser(userName)
			ctrl = $controller("EmailController",
																		$scope: scope
																		)
 beforeEach(module("myApp"))
 describe 'form', ->   
 	beforeEach(setup())
 	it 'Function  should have age 18-60', ->
 		expect(scope.generateAge().length).toEqual  [18..60].length

 	it 'submit Function should be valid ', ->
 		expect(scope.myForm.$valid).toBe true 
 
 describe 'user service', ->
  beforeEach(setup("Thkeam"))
  it 'getCurrent user should equal to thkeam', ->
   expect(userService.getCurrentUser()).toEqualData(name) 
    
   