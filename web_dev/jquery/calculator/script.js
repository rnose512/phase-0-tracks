$(document).ready(function() {
  var operatorButtons = ["+", "-", "*", "/"];
  var x = 0;
  var y = 0;
  var operator = '';
  var flag=false;
  var operatorConversion = {
    "+"
  }

  // create calculator div
  $("body").append("<div id='calculator'></div>");
  $("#calculator").css({
    "width": "210px",
    "height": "350px"
  });

  // create input field
  $("#calculator").append("<input type='text' id='display'/>");

  // create 10 divs 0 - 9
  for(i=0; i<10; i++){
    $("#calculator").append(`<button id='${i}' class='modifier number'>${i}</button>`);
  }

  // create divs for + - * / =
  for(i=0; i<operatorButtons.length; i++){
    $("#calculator").append(`<button id='${operatorButtons[i]}' class='modifier operator'>${operatorButtons[i]}</button>`)
  }

  // create clear and equal button
  $("#calculator").append("<button id='.' class='modifier'>.</button>");
  $("#calculator").append("<button id='equals'>=</button>");
  $("#calculator").append("<button id='clear'>C</button>");

  // add CSS to buttons
  $("button").css({
    "width": "70px",
    "height": "70px",
    "font-size": "100%"
  });

  // on click on the divs, it will show up in the line to calculate
  $(".modifier").on("click", function(){
    var input = this.id;
    $("#display").val($("#display").val()+input);
  });

  $(".operator").on("click", function() {
    flag=true;
    $(".number").on("click", function(){
      var addToY = this.id;
      y += addToY;
      console.log("Y is " + y);
    });
  });

  if(flag===false){
    $(".number").on("click", function(){
       var addToX = this.id;
       x += addToX;
       console.log(flag);
       console.log("X is " + x);
     });
  }

  // clear button
  $("#clear").on("click", function(){
    $('#display').val('');
    x = 0;
    y = 0;
  });

  $("#equals").on("click", function(){
    x
  });

    // until = is clicked
    // until operator button is clicked, store numbers in x
    // until = is clicked, store numbers in y
    // calculate x + operator + y
    // function calculate(){
    //   $("#equals").on("click", function(){
    //   });
    // }

    // calculate();

    // until one of the operator buttons are pressed, add the numbers to variable X. after an operator button is pressed, add numbers to variable Y. When "=" is clicked, calculate x + operator + y
});