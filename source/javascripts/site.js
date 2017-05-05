var allEmojis;

$(function(){




  $("#flip-button").click( function() {


    $("#browser-card").toggleClass("flipped")
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
