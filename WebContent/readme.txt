First, you will learn the basics of AngularJS: directives, expressions, filters, modules, and controllers.

Then you will learn everything else you need to know about AngularJS:
Events, DOM, Forms, Input, Validation, Http, and more.

AngularJS version 1.0 was released in 2012.
Miško Hevery, a Google employee, started to work with AngularJS in 2009.
The idea turned out very well, and the project is now officially supported by Google.


<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
AngularJS is a JavaScript framework. It can be added to an HTML page with a <script> tag.

AngularJS extends HTML attributes with Directives, and binds data to HTML with Expressions.
AngularJS is a JavaScript framework. It is a library written in JavaScript.

AngularJS is distributed as a JavaScript file, and can be added to a web page with a script tag:
AngularJS extends HTML with ng-directives.

The ng-app directive defines an AngularJS application.

The ng-model directive binds the value of HTML controls (input, select, textarea) to application data.

The ng-bind directive binds application data to the HTML view. 
The prefix ng stands for "Angular;" all of the built-in directives that ship with Angular use that prefix. 

AngularJS starts automatically when the web page has loaded.

The ng-app directive tells AngularJS that the <div> element is the "owner" of an AngularJS application.

The ng-model directive binds the value of the input field to the application variable name.

The ng-bind directive binds the innerHTML of the <p> element to the application variable name. 

The ng-init directive initializes AngularJS application variables.

You can use data-ng-, instead of ng-, if you want to make your page HTML valid.
AngularJS expressions are written inside double braces: {{ expression }}.

AngularJS modules define AngularJS applications.
AngularJS controllers control AngularJS applications.
The ng-app directive defines the application, the ng-controller directive defines the controller.

AngularJS binds data to HTML using Expressions.
AngularJS numbers are like JavaScript numbers:

Like JavaScript expressions, AngularJS expressions can contain literals, operators, and variables.

Unlike JavaScript expressions, AngularJS expressions can be written inside HTML.

AngularJS expressions do not support conditionals, loops, and exceptions, while JavaScript expressions do.

AngularJS expressions support filters, while JavaScript expressions do not.

An AngularJS module defines an application.

The module is a container for the different parts of an application.

The module is a container for the application controllers.

Controllers always belong to a module.

AngularJS has a set of built-in directives which you can use to add functionality to your application.

In addition you can use the module to add your own directives to your applications:

It is common in AngularJS applications to put the module and the controllers in JavaScript files.

In this example, "myApp.js" contains an application module definition, while "myCtrl.js" contains the controller:

While it is common in HTML applications to place scripts at the end of the <body> element, it is recommended that you load the AngularJS library either in the <head> or at the start of the <body>.

This is because calls to angular.module can only be compiled after the library has been loaded.

The ng-app directive initializes an AngularJS application.

The ng-init directive initializes application data.

The ng-model directive binds the value of HTML controls (input, select, textarea) to application data.

The ng-repeat directive repeats an HTML element:

The ng-repeat directive actually clones HTML elements once for each item in a collection.

The ng-repeat directive used on an array of objects:

AngularJS is perfect for database CRUD (Create Read Update Delete) applications.
Just imagine if these objects were records from a database.

The ng-app directive defines the root element of an AngularJS application.

The ng-app directive will auto-bootstrap (automatically initialize) the application when a web page is loaded.
The ng-init directive defines initial values for an AngularJS application.

Normally, you will not use ng-init. You will use a controller or module instead.

The ng-model directive binds the value of HTML controls (input, select, textarea) to application data.

The ng-model directive can also:

    Provide type validation for application data (number, email, required).
    Provide status for application data (invalid, dirty, touched, error).
    Provide CSS classes for HTML elements.
    Bind HTML elements to HTML forms.

New directives are created by using the .directive function.

To invoke the new directive, make an HTML element with the same tag name as the new directive.

When naming a directive, you must use a camel case name, w3TestDirective, but when invoking it, you must use - separated name, w3-test-directive:

By adding a restrict property with the value "A", the directive can only be invoked by attributes:

The legal restrict values are:

    E for Element name
    A for Attribute
    C for Class
    M for Comment

By default the value is EA, meaning that both Element names and attribute names can invoke the directive.


<w3-test-directive></w3-test-directive>
<div class="w3-test-directive"></div>
<div w3-test-directive></div>

The legal restrict values are:

    E for Element name
    A for Attribute
    C for Class
    M for Comment

By default the value is EA, meaning that both Element names and attribute names can invoke the directive.
AngularJS ng-model Directive

With the ng-model directive you can bind the value of an input field to a variable created in AngularJS.
























