angular.module(\app).config ($state-provider, $url-router-provider)->
  $url-router-provider.otherwise \/
  $state-provider.state do 
    * \root
    * url: \/
      views:
        '':
          templateUrl: \app
          controller: \app