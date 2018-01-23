<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/angular.min.js"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Anguar Strings....</title>
</head>
<body>
<h2>Hello, Angular String</h2>

<!-- <div ng-app="" ng-init="quantity=5;cost=5" data-ng-init="">
 <p>Total in dollar: {{ quantity * cost }}</p>
  <p>Total in dollar: <span ng-bind="quantity * cost"></span></p>
</div> -->

<!-- <div ng-app="" ng-init="firstName='Suresh';lastName='babu' ">
 <p>Hello 66::: <span ng-bind="firstName +' '+ lastName"></span></p>
 <br> Hello {{firstName+' '+lastName}}
</div> -->

<!-- <div ng-app="" ng-init="points=[1,2,34,55]" >
<p> The result is: {{points[2]}} </p>
 <p>The third result is <span ng-bind="points[2]"></span></p>
</div> -->

<!-- <div ng-app="" data-ng-init="person={firstName:'Suresh',lastName:'Babu'}">
<p>The name is: {{person.firstName}}</p>
<p>The name is: <span ng-bind="person.lastName"></span></p>
</div> -->

<!-- <div ng-app="myApp" ng-controller="myCtrl">
	My Name is: {{firstName+" "+lastName}}
</div>

<script>
var app = angular.module('myApp', []);
app.controller("myCtrl", function($scope) {
	$scope.firstName = "Suresh";
	$scope.lastName="Babu";
}); -->

<%-- <div ng-app="myApp" ng-controller="myCtrl">
Hello::::::: {{ firstName + " " + lastName }}
</div>

<script src="${pageContext.request.contextPath}/js/myApp.js"></script>
<script src="${pageContext.request.contextPath}/js/myCtrl.js"></script> --%>

 <!-- <div ng-app="myApp" w3-test-suresh1></div>

<script>
var app = angular.module("myApp", []);

app.directive("w3TestSuresh1", function() {
    return {
        template : "I was made in a directive constructor!"
    };
});
</script>  -->

<!-- <div ng-app="" ng-init="names=['one','two','three']">
<p>Looping with ng-repeat </p>
	<ol>
		<li ng-repeat="x in names">
			{{x}}
		</li>
	</ol>

</div> -->

<div ng-app="" ng-init="names=[
{name:'Janu',country:'AUS'},
{name:'Janu3',country:'AUS33'},
{name:'Ja5nu',country:'AUS5'}
]">

<ul>
	<li ng-repeat="x in names">
		{{x.name+' '+x.country}}
	</li>
</ul>

</div>


</body>
</html>