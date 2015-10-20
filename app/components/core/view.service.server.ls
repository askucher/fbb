module.exports = ($xonom, path)->
  $xonom.service \view, ->
    jade = require \jade
    get: (dirname, name)->
      jade.compile-file(path.get(dirname, name + \.jade))
      