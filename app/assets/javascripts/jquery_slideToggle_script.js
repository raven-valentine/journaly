// jQuery slideToggle Script //

  $(document).ready(function(){
        $(".place-box").hide();
        $(".show_hide_place-box").show();
        $('.show_hide_place-box').click(function(){
          $(".place-box").slideToggle();
        });
      });
  $(document).ready(function(){
        $(".trip-box").hide();
        $(".show_hide_trip-box").show();
        $('.show_hide_trip-box').click(function(){
          $(".trip-box").slideToggle();
        });
      });