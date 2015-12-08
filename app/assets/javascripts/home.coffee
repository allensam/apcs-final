# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery(document).ready ($) ->
  $("#my-slideshow").bjqs
    height: 320
    width: 620
    responsive: true

getRandomColor = (s, l) ->
  color = "hsl(" + Math.random() * 360 + ", " + s + "%," + l + "%)"
  return color

#RandomColor for navlist
jQuery(document).ready ($) ->
  $(".navlist").mouseover ->
    $(".navlist:hover").css "background-color", getRandomColor(100, 75)

  $(".navlist").mouseleave ->
    $(".navlist").css "background-color", "transparent"