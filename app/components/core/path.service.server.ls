module.exports = ($xonom, path)->
  $xonom.service \path, ->
    get: (dirname, second)->
      dirname.replace(\/.compiled, '') + \/ + second