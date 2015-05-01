---
---

Festa = angular.module 'Festa', [], ($interpolateProvider)->
  $interpolateProvider.startSymbol('//')
  $interpolateProvider.endSymbol('//')

Festa.controller 'Welcome',['$scope', ($scope)->
  $scope.active = 'about'
]