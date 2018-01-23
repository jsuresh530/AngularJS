<html>
<head>

  <script type="text/javascript" src="${pageContext.request.contextPath}/js/angular.min.js"></script> 
</head>
<body>

<h2>Hello Angular</h2>

<!-- <div ng-app="myApp" data-ng-init="firstName='Suresh Babu'" ng-controller='myCtrl' ng-init="myCol='lightblue'">

<p>The sum of 2 and 1 is equal to  <b>{{ 2 + 1 }}</b></p>
<p>Input something in the input box:</p>

<p>Name : <input type="text" ng-model="name" placeholder="Enter name here"></p>
<h1>Hello {{name}}</h1>

<p>The name is <span ng-bind="firstName"></span></p>

First Name: <input type="text" ng-model='firstName1'>
Last Name: <input type="text" ng-model='lastName'>
<br>Full Name: {{firstName1 +" "+lastName}}
<br>
<input style="background-color:{{myCol}}" ng-model="myCol" value="{{myCol}}">
<br>

</div>

<script type="text/javascript">
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope){
	$scope.firstName1 ='Suresh';
	$scope.lastName='Babu';
});
</script>
 -->
 
 <div ng-app="myApp">
        <div ng-controller="myController">
           <button ng-click="getDataFromServer()">Fetch data from server</button>
           <p>First Name : {{person.firstName}}</p>
           <p>Last Name : {{person.lastName}}</p>
        </div>
</div>

 
 <script type="text/javascript">
 var app = angular.module('myApp', []);

 function myController($scope, $http) {
	alert(11)
         $scope.getDataFromServer = function() {
                 $http({
                         method : 'POST',
                         url : 'angularJsServlet'
                 }).success(function(data, status, headers, config) {
                         $scope.person = data;
                 }).error(function(data, status, headers, config) {
                         // called asynchronously if an error occurs
                         // or server returns response with an error status.
                 });

         };
 };
 
 </script>
 
</body>
</html>
