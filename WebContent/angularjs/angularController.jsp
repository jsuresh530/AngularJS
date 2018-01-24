<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Angular Controller demo.</title>
</head>
<body ng-controller="AppController as ctrl">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

    <label>Name :</label><input type="text" ng-model="ctrl.name" placeholder="Enter your name"/><br/><br/>  
    <span ng-bind="ctrl.message"></span><span ng-bind="ctrl.name"></span> <br/><br/>
    
    <button ng-click="ctrl.changeMessage()">Change Message</button>
    <button ng-click="ctrl.resetMessage()">Reset Message</button>
</body>

<script type="text/javascript">
angular.module('myApp', []).controller('AppController', [function() {
	var self = this;
	self.name = '';
	self.message ='Hello ';
	
	self.changeMessage = function(){
		self.message ='Bye ';
	};
	
	self.resetMessage = function() {
		self.message ='Hello ';
	};
	
}]);

</script>
</html>