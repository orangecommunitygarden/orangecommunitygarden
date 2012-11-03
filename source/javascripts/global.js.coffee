jQuery ->
  images = ['/images/banner1.jpg', '/images/banner2.jpg', '/images/banner3.jpg', '/images/banner4.jpg', '/images/banner5.jpg']
  random = Math.floor(images.length*Math.random())
  $.backstretch(images[random])
  # $("#home h1").fitText()

