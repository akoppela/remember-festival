---
---

Festa = angular.module 'Festa', [], ($interpolateProvider)->
  $interpolateProvider.startSymbol('//')
  $interpolateProvider.endSymbol('//')

Festa.controller 'Welcome',['$scope', '$location', ($scope, $location)->
  console.info $location.path()
  $scope.active = $location.path().split('/')[1] || 'about'
]