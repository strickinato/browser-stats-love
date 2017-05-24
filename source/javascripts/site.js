var allEmojis;


// Select toggler and put click handler
$("#abutton").click(function() {

  // In the handler, select the stuff you wanna flip
  // And flip it
  $("#browser-card").toggleClass("flipped")
  $("#resolution-card").toggleClass("flippedplus")

});



$(function(){
    $("#flip-tab-right").click( function() {
     $("flip-tab").transition({ x: 200 })
    $("#browser-card").toggleClass("flipped")
    $("#resolution-card").toggleClass("flippedplus")
  });







  var lastEmoji = 0;
  $('#heart-circle').click( function() {
    var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
    var randomNumber = Math.floor( Math.random() * allEmojis.length )

    while (randomNumber === lastEmoji) {
      randomNumber = Math.floor( Math.random() * allEmojis.length )
    }

    var lastEmoji = randomNumber

    var emoji = allEmojis[randomNumber];

    $("#heart").html(emoji);
    $("#title-emoji").html(emoji);

    $(this).addClass('animated bounceIn').one(animationEnd, function() {
        $(this).removeClass('animated bounceIn');
    });
  });
});

allEmojis = [
 '👹'
,'🤷'
,'😂'
,'😍'
,'🤔'
,'😊'
,'🔥'
,'😘'
,'🙄'
, '💯'
, '🖖'
, '⚡️'
, '🐐'
, '💩'
, '🙅‍♂️'
];
