debug = ->
  $(window).scroll ->
    y = jQuery(this).scrollTop()
    $('#scroll').text 'Scroll:' + y
    return

  $('#debug').prepend '<div id="scroll" data-0="top:0%;" data-end="top:95%;"></div>'
  $('#debug').prepend '<div id="progress" data-0="width:0%;background:hsl(200, 100%, 50%);" data-end="width:100%;background:hsl(920, 100%, 50%);"></div>'
  return

kirikane = ->
  scrollMax = 10000
  windowH = $(window).height()
  windowW = $(window).width()

  haku = "<div data-start='top:0%;left:0%;' data-#{scrollMax}='top:100%; left:100%;'></div>"
  haku += "<img src='images/kiri0.png' data-start='top:0px;left:0px;' data-end='top:#{windowH}px;left:#{windowW * 2}px;'>"
  haku += "<img src='images/kiri1.png' data-start='top:127px;left:0px;' data-end='top:#{windowH + 128}px;left:#{windowW}px;'>"
  $('#haku').prepend haku

  $(window).on 'resize', ->
    windowH = $(window).height()
    windowW = $(window).width()
    return
  return

$(window).load ->
  debug()
  kirikane()
  skrollr.init()
  return