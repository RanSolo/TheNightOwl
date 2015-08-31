(function() {
  $(function() {
    var song;
    song = $('#owl-hoot');
    $("#landing-logo").on("click", function() {
      var animationEnd, animationName;
      $("audio").trigger('play');
      animationName = 'animated slideInUp';
      animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
      $('body').css('background-color', '#366272');
      $('#landing-logo').removeClass(animationName);
      $('#landing-logo').css({
        '-webkit-animation-duration': '.3s',
        '-webkit-animation-iteration-count': '3'
      });
      $('body').css('background-color', '#F0F2C3');
      animationName = 'animated rubberBand';
      return $("#landing-logo").addClass(animationName).one(animationEnd, function() {
        $('#landing-logo').removeClass(animationName);
        $('body').css('background-color', '#18516D');
        $('#landing-logo').css({
          '-webkit-animation-duration': '.3s',
          '-webkit-animation-iteration-count': '4'
        });
        animationName = 'animated shake';
        return $("#landing-logo").addClass(animationName).one(animationEnd, function() {
          $('body').css('background-color', '#0D212D');
          return $('#landing-logo').removeClass(animationName);
        });
      });
    });
    return $('#landing-logo').hover(function() {
      return $("#click").show();
    });
  });

}).call(this);
