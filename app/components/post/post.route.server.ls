is-facebook = (req)->
  user-agent = req.headers[\user-agent].to-lower-case!
  bot =
    | user-agent.index-of(\facebook) > -1 => yes
    | otherwise => no
  bot
current-url = "https://facebook-booking-askucher.c9.io/"
  

module.exports = ($router, post, view, path)->
  $router.get \/activity/:id, (req, res)->
    res.send do
      view.get(__dirname, \post) do  
        title: 'TITLE'
        site_name: 'SITE_NAME'
        url: 'URL'
        app_id: 'APP_ID'
        type: 'TYPE'
        locale: 'LOCALE'
        author: 'AUTHOR'
        publisher: 'PUBLISHER'
        image: "/image/#{req.params.id}"
  $router.get \/image/:id, (req, res)->
    post.make do
      * require(\fs).read-file-sync(path.get(__dirname, \input.jpg))
      * (err, img)->
          res.write-head 200, {\Content-Type : \image/jpg }
          res.end img, \binary