jQuery ->
  images = ['/images/banner1.jpg', '/images/banner2.jpg', '/images/banner3.jpg', '/images/banner4.jpg', '/images/banner5.jpg']
  random = Math.floor(images.length*Math.random())
  $.backstretch(images[random])

  gallery = $('.gallery')
  if gallery
    flickrUrl = "http://api.flickr.com/services/rest/?format=json&method=flickr.groups.pools.getPhotos&group_id=2090817@N24&api_key=692c2d6fe91b7c6cf3d96b2ea11a7439&extras=url_q&jsoncallback=?"
    $.getJSON(flickrUrl, (data)->
      $.each(data.photos.photo, (i,item)->
        photoUrl = "http://www.flickr.com/photos/#{item.owner}/#{item.id}"
        gallery.append("<li class=\"span2\"><a href=\"#{photoUrl}\" class=\"thumbnail\"><img src=\"#{item.url_q}\"></a></li>")
      )
    )


