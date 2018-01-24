<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Angular js Basic form </title>
<style>
body
	{
		font-family:"Arial";
		background-color:#E2E2DC
	}
	
	.username.ng-valid {
          background-color: lightgreen;
      }
      .username.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .username.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }
 
      .email.ng-valid {
          background-color: lightgreen;
      }
      .email.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .email.ng-dirty.ng-invalid-email {
          background-color: yellow;
      }
      
</style>
</head>
<body ng-controller="AppController as ctrl">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

<!-- This is the first one  
<form ng-submit="ctrl.submit()">
		 
  <input type="text"  ng-model="ctrl.user.username" placeholder="Enter your name"/><br/><br/>
  <input type="text"  ng-model="ctrl.user.address" placeholder="Enter your Address"/><br/><br/>
  <input type="text"  ng-model="ctrl.user.email" placeholder="Enter your Email"/><br/><br/>
          
          <input type="submit" value="submit">
</form>  -->

<form ng-submit="ctrl.submit()" name="myForm">
	
	<input type="text" ng-model="ctrl.user.username" name="uname" placeholder="Enter your name " required ng-minlength='3' class="username"/>
	<span ng-show="myForm.$dirty && myForm.uname.$error.required">This is q required field</span>
	<span ng-show="myForm.$dirty && myForm.uname.$error.minlength">Min length required is 4</span>
	<span ng-show="myForm.$dirty && myForm.uname.$invalid">This is q required field</span><br/>
	
	<input type="text" ng-model="ctrl.user.address" placeholder="Enter your Address"/><br/><br/>
	
	<input type="email" ng-model="ctrl.user.email" name="email"  placeholder="Enter email Address" required class="email"/>
	<span ng-show="myForm.$dirty && myForm.email.$error.required">This is a required field</span>
	<span ng-show="myForm.$dirty && myForm.email.$invalid">This field is invalid</span><br> <br/>
	
	<input type="submit" value="SUBMIT" ng-disabled="myForm.$invalid">
	
</form>

</body>

<script type="text/javascript">
angular.module('myApp', []).controller('AppController', [function() {
	var self = this;
	self.submit = function()
	{
		console.log('Form is submitted with following user', self.user);
	};
}]);

</script>

</html>