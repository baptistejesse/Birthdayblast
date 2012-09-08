# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $("#birthday_friend").change ->
    face = $(this).val()
    $(this).prepend "<img src=\"http://graph.facebook.com/\"" + face + "\"/picture?type=square\"/>"

