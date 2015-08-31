# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->

  song = $('#owl-hoot')
  $("#landing-logo").on "click", ->
    $("audio").trigger('play');
    animationName = 'animated slideInUp'
    animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend'
    $('body').css('background-color', '#366272')
    $('#landing-logo').removeClass(animationName)
    $('#landing-logo').css {'-webkit-animation-duration': '.3s', '-webkit-animation-iteration-count': '3'}
    $('body').css('background-color', '#F0F2C3')
    animationName = 'animated rubberBand'
    $("#landing-logo").addClass(animationName).one animationEnd, ->
      $('#landing-logo').removeClass animationName
      $('body').css('background-color', '#18516D')
      $('#landing-logo').css {'-webkit-animation-duration': '.3s', '-webkit-animation-iteration-count': '4'}
      animationName = 'animated shake'
      $("#landing-logo").addClass(animationName).one animationEnd, ->
        $('body').css('background-color', '#0D212D')
        $('#landing-logo').removeClass animationName

        # window.location.replace("http://localhost:3000/welcomes");




  $('#landing-logo').hover ->
    $("#click").show()
