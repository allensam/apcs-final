# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
getRandomColor = (s, l) ->
  randomdeg = Math.random() * 360
  color = "hsl(" + randomdeg + ", " + s + "%," + l + "%)"
  return color

jQuery(document).ready ($) ->
  $("#my-slideshow").bjqs
    height: 320
    width: 620
    responsive: true

#RandomColor for navlist
  $(".navlist").mouseover ->
    $(".navlist:hover").css "background-color", getRandomColor(100, 75)

  $(".navlist").mouseleave ->
    $(".navlist").css "background-color", "transparent"

#RandomColor for signup button
  $(".signup").mouseover ->
    $(".signup:hover").css "background-color", getRandomColor(100, 75)

  $(".signup").mouseleave ->
    $(".signup").css "background-color", "white"

  #snowwwwwwwwwwwwwwwwwwwwww
  $.letItSnow ".let-it-snow",
    stickyFlakes: "lis-flake--js"
    makeFlakes: true
    sticky: true

  #makes each letter of title be raindom color using rainbow class
  randomizeTextColor = (element) ->
    text = $(element).text()
    $(element).empty()
    i = 0

    while i < text.length
      color = colors[Math.floor(colors.length * Math.random())]
      letter = $("<span>",
        text: text.charAt(i)
        css:
          color: color
          transition: "ease 0.3s"
      )
      $(element).append letter
      i++
  randomize = (selector) ->
    $(selector).each ->
      randomizeTextColor this
  colors = [ "#FF7F7F", "#FF967F", "#FFAC7F", "#FFD47F", "#FFE57F", "#FFE57F", "#FFF27F", "#FFF87F", "#EEFF7F", "#DFFF7F", "#CEFF7F", "#C7FF7F", "#B2FF7F", "#AAFF7F", "#7FFF7F", "#7FFF94", "#7FFFAA", "#7FFFBF", "#7FFFD4", "#7FFFE9", "#7FFFFF", "#7FE9FF", "#7FD4FF", "#7FBFFF", "#7FAAFF", "#7F94FF", "#7F7FFF", "#947FFF", "#A97FFF", "#BF7FFF", "#D47FFF", "#E97FFF", "#FF7FFF", "#FF7FE9", "#FF7FD4", "#FF7FBF", "#FF7FA9", "#FF7F94", "#FF7F81" ]
  interval = 2000
  $ randomize(".rainbow")
  window.setInterval (->
    randomize ".rainbow"
  ), interval
