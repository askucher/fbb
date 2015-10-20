angular.module('app').run(['$templateCache',function($templateCache) {   'use strict';

  $templateCache.put('app',
    "<h1>hello</h1>"
  );


  $templateCache.put('post',
    "<meta property=\"og:title\"/><meta property=\"og:site_name\"/><meta property=\"og:url\"/><meta property=\"fb:app_id\"/><meta property=\"og:type\"/><meta property=\"og:locale\"/><meta property=\"article:author\"/><meta property=\"article:publisher\"/><meta property=\"og:title\"/><meta property=\"og:image\"/><h1>Post </h1>"
  );
 }])