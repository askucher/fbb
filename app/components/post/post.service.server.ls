module.exports = ($xonom, path)->
  $xonom.service \post, ->
    images = require \images
    gm = require \gm
    options =
      bottom: path.get(__dirname, \bottom.png)
      text: 'Book It Now'
      text-size: 30
    make: (buf, callback)->
      require(\sync) ->
          size = (gm, callback) ->
            gm.size do 
                * buffer-stream: yes
                * (err, size) ->
                    callback err, size
          input = gm buf
          bottom = gm options.bottom
          bottom_size = size.sync null, bottom
          input_size = size.sync null, input
          change = input_size.width / bottom_size.width
          new_input_size =
            width: input_size.width / change
            height: input_size.height / change
          input.resize(new_input_size.width, new_input_size.height).append(options.files.bottom).to-buffer \JPG, (err, buffer) ->
            gm(200, options.text-size, \transparent).fontSize(options.text-size).drawText(0, options.text-size, options.text).trim!.to-buffer \PNG, (err, text) ->
              text = images(text)
              result = images(buffer).draw(text, bottom_size.width / 2 - text.width! / 2, new_input_size.height + text.height! + 10).encode(\jpg, {operation:50})
              callback null, result