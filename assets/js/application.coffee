---
---

Festa = angular.module 'Festa', [], ($interpolateProvider)->
  $interpolateProvider.startSymbol('//')
  $interpolateProvider.endSymbol('//')

Festa.controller 'Welcome',['$scope', '$location', ($scope, $location)->
  $scope.active = $location.path().split('/')[1] || 'about'
  
  contents =
    'about': document.getElementById('about')
    'program': document.getElementById('program')
    'program-dance-temple': document.getElementById('program-dance-temple')
    'program-chillout-garden': document.getElementById('program-chillout-garden')
    'program-sacred-fire': document.getElementById('program-sacred-fire')
    'environment': document.getElementById('environment')
    'guide': document.getElementById('guide')
    'guide-accommodation': document.getElementById('guide-accommodation')
    'guide-location': document.getElementById('guide-location')
    'tickets': document.getElementById('tickets')
  
  $scope.move = (id, state)-> if !state then contents[id].scrollTop += 100 else contents[id].scrollTop -= 100
]