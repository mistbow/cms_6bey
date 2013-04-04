  function locate_deals(){
      var margin_top = 10;
      var deals=$(".deal");
      var deal_W = deals[0].offsetWidth-10;
      var h=[];
      var top = [0,0,0,0];
      for(var i = 0;i < deals.length;i++) {
          deal_h = deals[i].offsetHeight;
          h[i]=deal_h;
          $('#deal_'+i).css("left",(i%4) * deal_W);
          if(i < 4) {
              $('#deal_'+i).css("top",0);
          }else{
            top[i%4] =(h[i-4]+margin_top+top[i%4])
          	$('#deal_'+i).css("top",top[i%4]);
          }
      }
     max_top = Math.max.apply({},top)+Math.max.apply({},h);
     weight_top = $('#deal_0').offset().top;
     if ( weight_top > 400){
       weight_top = weight_top-100;
     }else{
      weight_top +=50;
     }
     $(".pagination").css("top",max_top+20);
     $("footer").css({
     	  "top":max_top+weight_top,
     	  "position":"absolute"
     });
     $("hr").css({
         "top":max_top+weight_top,
        "position":"absolute"
     })
  }

$(function() {
  $('.pic').tooltip({
    position: {
      my: "center bottom-20",
      at: "center top",
      using: function( position, feedback ) {
        $( this ).css( position );
        $( "<div>" )
          .addClass( "arrow" )
          .addClass( feedback.vertical )
          .addClass( feedback.horizontal )
          .appendTo( this );
      }
    }
  });
});