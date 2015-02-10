describe 'module myApp', ->
  myConst = null
  scope = null
  ctrl = null
  route = null

  beforeEach ->
    module 'myApp'
    inject (_VERSION_,$rootScope,$controller, _$route_) ->
      myConst = _VERSION_
      scope = $rootScope.$new()
      route = _$route_
      ctrl = $controller("InboxController",
      																			$scope: scope
      	)

  describe 'the constant', ->
   it 'version equal to 1.0', ->
     expect(scope.version).toEqual myConst

   it 'should display This is Function in description', ->
   	expect(scope.description()).toEqual "This is Function in description"

   it 'route should work properly', ->
   	expect(route.routes['/inbox'].controller).toBe 'InboxController'
				expect(route.routes['/inbox'].templateUrl).toBe 'index.html'
				expect(route.routes['/inbox/email/:id'].templateUrl).toEqual 'email.html'
				expect(route.routes['/inbox/email/:id'].controller).toEqual 'EmailController'
				# otherwise redirect to
				expect(route.routes[null].redirectTo).toEqual '/inbox' 
				     