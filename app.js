var app = angular.module('myApp', []);

app.controller('customersCtrl', function($scope, $http) {
	$http.get("mysql.php")
	.then(function(response) {
		console.log(response);
		//console.log(response.data);
		//console.log(response.data.records);
		$scope.companies = response.data.records;
	});
});