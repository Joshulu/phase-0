// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body')
mainHeading = $('body > h1')
image = $("img")

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
mainHeading.css("color", "red")
mainHeading.css("border", "2px solid black")
mainHeading.css("visibility", "hidden")
image.css("border", "2px solid black")

//RELEASE 4: Event Listener
  // Add the code for the event listener here

$("img").on("mouseover", function(test){
    test.preventDefault()
    $(this).attr('src', "http://www.weddingdaydoves.com/images/white%20on%20white.jpg")
})

$("img").on("mouseleave", function(f){
    f.preventDefault()
    $(this).attr('src', "dbc_logo.png")
})

//RELEASE 5: Experiment on your own
$("img").on("click", function(g){
    g.preventDefault()
    $(this).animate({
        height: 60,
        width: 80
        })
})

$("img").on("mouseover", function(g){
    g.preventDefault()
    $(this).animate({
        opacity: 0.5,
        borderWidth: 30,
        })
})
/*
Reflection

•What is jQuery?


•What does jQuery do for you?


•What did you learn about the DOM while working on this challenge?








*/




})  // end of the document.ready function: do not remove or write DOM manipulation below this.

