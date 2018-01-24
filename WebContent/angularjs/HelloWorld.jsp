<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello World...</title>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

<div ng-app ="myApp">
2+2 = {{2+2}} <br>
<label>Name: </label> <input type="text" ng-model="name" placeholder="Enter your name: ">
<h1>hello, <span ng-bind="name"></span></h1> <br>
<h1>Hey, {{name}}</h1>
</div>

</body>

<script>
angular.module('myApp', []);
</script>

</html>