$(document).ready(function() {
  var operatorButtons = ["+", "-", "*", "/"];
  var x = 0;
  var y = 0;
  var operatorInput = null;
  var outputNumber = 0;
  var operator = '';
  var math = {
    '+': function(x, y) {return x + y},
    '-': function(x, y) {return x - y},
    '*': function(x, y) {return x * y},
    '/': function(x, y) {return x / y}
  };

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

  // create decimal, clear, and equal button
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
    input = this.id;
    $("#display").val($("#display").val()+input);
  });

  $(".number").on("click", function(){
    console.log("number on click");
    if(operatorInput === null){
      var addToX = this.id;
      x += addToX;
      x = Number(x);
      console.log("X is " + x);
     }else{
      var addToY = this.id;
      y += addToY;
      y = Number(y);
      outputNumber = math[operatorInput](x, y);
      console.log("Y is " + y);
     }
   });

  $(".operator").on("click", function() {
    console.log("operator on click");
    operatorInput = this.id;
  });


  // clear button
  $("#clear").on("click", function(){
    $('#display').val('');
    x = 0;
    y = 0;
    operatorInput = null;
    outputNumber = 0;
  });

  $("#equals").on("click", function(){
    outputNumber = math[operatorInput](x, y);
    console.log(outputNumber);
    $("#display").val($("#display").val()+"=");
    $("#display").val($("#display").val()+outputNumber);
  });
});