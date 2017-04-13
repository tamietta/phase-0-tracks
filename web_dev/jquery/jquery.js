// jQuery logic to load script only after HTML has been parsed.
// $(document).read(function(){})
$(document).ready(function(){

  // jQuery to change text of 'h1' tag.
  $('h1').text("This heading was created with jQuery");

  // jQuery pseudo-selector: :first
  $('p').first().css("color", "red");

  // jQuery selector index method: .eq(index) 
  $('p').eq(1).css("color", "green");

  // jQuery pseudo-selector: last() 
  $('#text p').last().css("font-weight", "bold");

  // jQuery Event Handler for 'click'
  $('button').first().click(function() {

    // Chained jQuery methods performed one after another.
    $('img[alt="panda"]').slideUp().slideDown()
  });

  // jQuery Event Handler for 'click'
  $('button').eq(1).click(function() {

    // jQuery animate( {css}, speed)
    // speed = 'fast', 'slow', milliseconds
    $('div').first().animate({
      top: '100px',
      left: '500px'
    }, 3000)
  })

  // jQuery Event Handler for 'click'
  $('button').eq(2).click(function() {

    // Use the 'this' selector.
    if ($(this).text() === "Fade In") {
      $(this).text("Fade Out")
    } else {
      $(this).text("Fade In")
    }

    // jQuery fadeToggle()
    $('div').last().fadeToggle()
  })

});