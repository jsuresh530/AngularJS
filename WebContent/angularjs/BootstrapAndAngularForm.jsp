<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
  <head>  
    <title>Form Demo</title>  
    <style>
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
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link rel="stylesheet" href="../js/app.css">
     
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"> </script>
  </head>
  <body ng-app="myApp">
      <div class="generic-container" ng-controller="AppController as ctrl">
          <div class="panel panel-default">
              <div class="panel-heading"><span class="lead">User Registration Form </span></div>
              <div class="formcontainer">
                  <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                      <input type="hidden" ng-model="ctrl.user.id" />
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="uname">Name</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.username" id="uname" class="username form-control input-sm" placeholder="Enter your name" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.uname.$error.required">This is a required field</span>
                                      <span ng-show="myForm.uname.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.uname.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                       
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="address">Address</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.address" id="address" class="form-control input-sm" placeholder="Enter your Address. [This field is validation free]"/>
                              </div>
                          </div>
                      </div>
 
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="email">Email</label>
                              <div class="col-md-7">
                                  <input type="email" ng-model="ctrl.user.email" id="email" class="email form-control input-sm" placeholder="Enter your Email" required/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.email.$error.required">This is a required field</span>
                                      <span ng-show="myForm.email.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
 
                      <div class="row">
                          <div class="form-actions floatRight" >
                              <input type="submit"  value="{{!ctrl.user.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-md" ng-disabled="myForm.$invalid" style="margin-left:-900px; width: 80px;margin-top:20px">
                              <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-md" ng-disabled="myForm.$pristine" style="margin-top:20px; width: 100px;">Reset Form</button>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
          <div class="panel panel-primary">
                <!-- Default panel contents -->
              <div class="panel-heading"><span class="lead">List of Users </span></div>
              <div class="tablecontainer">
                  <table class="table table-hover">
                      <thead>
                          <tr>
                              <th>ID.</th>
                              <th>Name</th>
                              <th>Address</th>
                              <th>Email</th>
                              <th width="100">
                          </tr>
                      </thead>
                      <tbody>
                          <tr ng-repeat="u in ctrl.users">
                              <td><span ng-bind="u.id"></span></td>
                              <td><span ng-bind="u.username"></span></td>
                              <td><span ng-bind="u.address"></span></td>
                              <td><span ng-bind="u.email"></span></td>
                              <td>
                              <button type="button" ng-click="ctrl.edit(u.id)" class="btn btn-success custom-width" style="margin-left:-71px;">Edit</button>  
                              <button type="button" ng-click="ctrl.remove(u.id)" class="btn btn-danger custom-width">Remove</button>
                          </tr>
                      </tbody>
                  </table>
              </div>
          </div>
      </div>
      <script>
          angular.module('myApp', [])
          .controller('AppController', ['$scope', function($scope) {
              var self = this;
              self.user={id:null,username:'',address:'',email:''};
              self.id = 4;
               
              self.users = [// In future posts, we will get it from server using service
                      {id:1, username: 'Sam', address: 'NY', email: 'sam@abc.com'},
					  {id:2, username: 'Tomy', address: 'ALBAMA', email: 'tomy@abc.com'},
                      {id:3, username: 'kelly', address: 'NEBRASKA', email: 'kelly@abc.com'}
              ];
               
              self.submit = function() {
                  if(self.user.id === null){
                      self.user.id = self.id++;
                      console.log('Saving New User', self.user);    
                      self.users.push(self.user);//Or send to server, we will do it in when handling services
                  }else{
                      for(var i = 0; i < self.users.length; i++){
                          if(self.users[i].id === self.user.id) {
                            self.users[i] = self.user;
                            break;
                          }
                      }
                     console.log('User updated with id ', self.user.id);
                  }
                  self.reset();
              };
               
              self.edit = function(id){
                  console.log('id to be edited', id);
                  for(var i = 0; i < self.users.length; i++){
                      if(self.users[i].id === id) {
                         self.user = angular.copy(self.users[i]);
                         break;
                      }
                  }
              }
               
              self.remove = function(id){
                  console.log('id to be deleted', id);
                  for(var i = 0; i < self.users.length; i++){
                      if(self.users[i].id === id) {
                         self.users.splice(i,1);
                         if(self.user.id === id){//It is shown in form, reset it.
                            self.reset();
                         }
                         break;
                      }
                  }
              }
               
              self.reset = function(){
                  self.user={id:null,username:'',address:'',email:''};
                  $scope.myForm.$setPristine(); //reset Form
              }
 
      }]);
  </script>
  </body>
</html>