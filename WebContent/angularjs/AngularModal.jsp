<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Angular Modal Here...</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/angular.min.js"></script> 
</head>
<body>

<div ng-app="myApp" ng-controller="myCtrl">
Name is: <input type="text" ng-model="name">
    <h1>You entered: {{name}}</h1>
</div>

<script type="text/javascript">
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
	$scope.name = "Suresh Babu";
	
});

</script>
</body>
</html>