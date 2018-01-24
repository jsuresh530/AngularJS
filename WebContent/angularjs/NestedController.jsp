<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app ="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nested contoller </title>
<style>
body
{
	font-family:"Arial";
	background-color:#E2E2DC
}
div 
{
  margin:10px;padding:10px;
  border:2px solid red;
} 
</style>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

<div ng-controller="FirstController as first">
 Type: {{first.type}}
	<div ng-controller="SecondController as second">
		Type: {{second.type}}
		Parent type: {{ first.type }}
		
		<div ng-controller="ThirdController as third">
			Type: {{third.type}}
			Parent type: {{second.type }}
			Parent Parent type: {{ first.type }}
		</div>
	</div>
</div>

</body>

<script type="text/javascript">
	angular.module('myApp', []).controller('FirstController', [function() {
		var self =this;
		self.type = 'FirstController';
	}])
	.controller('SecondController', [function() {
		var self =this;
		self.type = 'SecondController';
	}])
	.controller('ThirdController', [function() {
		var self =this;
		self.type = 'ThirdController';
	}]);
	
</script>


</html>