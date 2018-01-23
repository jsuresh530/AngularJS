<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
</head>
<body>

<script>
var app = angular.module("myApp", []); 
app.controller("myController", function($scope) {
    $scope.getDataFromServer = function () {
    	
    	$http({
            method : 'GET',
            url : 'AngularJsServlet'
    }).success(function(data, status, headers, config) {
            $scope.person = data;
    }).error(function(data, status, headers, config) {
    });
    }
});
</script>

<div ng-app="myApp"  >
<div ng-controller ="myController"> 
    <button ng-click="getDataFromServer()">Fetch data from server</button>
    <p>First Name : {{ person.fname }}</p>
    <p>Last Name : {{ person.lname }}</p>
</div>
 </div>
 
</body>
</html>