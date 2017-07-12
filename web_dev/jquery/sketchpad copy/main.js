$(document).ready(function() {
  // all custom jQuery will go here
  // $("#demo").html("Hello, World!");
  $("#trigger").click(function() {
    $("#demo").html("Hello, World!");
  });
});

// var clickX = new Array();
// var clickY = new Array();
// var clickDrag = new Array();
// var paint;

// function addClick(x, y, dragging) {
//   clickX.push(x);
//   clickY.push(y);
//   clickDrag.push(dragging);
// }

// //Creates grid if not supported by browser
// var canvasDiv = document.getElementById('canvasDiv');
// canvas = document.createElement('canvas');
// canvas.setAttribute('width', '500px');
// canvas.setAttribute('height', '300px');
// canvas.setAttribute('id', 'canvas');
// canvasDiv.appendChild(canvas);
// if(typeof G_vmlCanvasManager != 'undefined') {
//   canvas = G_vmlCanvasManager.initElement(canvas);
// }
// context = canvas.getContext("2d");

// //Mouse events.. When mouse is clicked and moved, it will draw.
// canvas.addEventListener('mousedown', function(e) {
//   redraw();
//   var mouseX = e.pageX - this.offsetLeft;
//   var mounseY = e.pageY - this.offsetTop

//   paint = true;
//   //addClick will record mouse location data
//   addClick(e.pageX - this.offsetLeft, e.pageY - this.offsetTop);
//   //redraw will draw the data
//   // redraw();
// });

// canvas.addEventListener('mousemove', function(e){
//   if(paint) {
//       addClick(e.pageX - this.offsetLeft, e.pageY - this.offsetTop, true)
//     redraw();
//     }
// });

// canvas.addEventListener('mouseup', function(e){
//   paint = false;
// });

// canvas.addEventListener('mouseleave', function(e){
//   paint = false;
// });

// function redraw(){
//   context.clearRect(0, 0, context.canvas.width, context.canvas.height); // Clears the canvas

//   var colorButton = document.getElementById('color');
//   colorButton.addEventListener('click', function(e) {
//     redraw();
//     context.strokeStyle = colors[Math.floor(Math.random() * colors.length)];

//   });

//   context.lineJoin = "round";
//   context.lineWidth = 3;

//   for(var i=0; i < clickX.length; i++) {
//     context.beginPath();
//     if(clickDrag[i] && i){
//       context.moveTo(clickX[i-1], clickY[i-1]);
//      }else{
//        context.moveTo(clickX[i]-1, clickY[i]);
//      }
//      context.lineTo(clickX[i], clickY[i]);
//      context.closePath();
//      context.stroke();
//   }
// }

// var clearButton = document.getElementById('clear');
// clearButton.addEventListener('click', function(e) {

//   context.clearRect(0, 0, 500, 300);
//   clickX = [];
//   clickY = [];
//   redraw();
// });

// colors = [
//   white = "#E7ECEF",
//   navy = "#274C77",
//   blue = "#6096BA",
//   lightBlue = "#A3CEF1",
//   grey = "#8B8C89"
// ]



// //Where are the drawings stored? Why doesn't clear function make a new canvas?
// //are you able to store new information in variables that are inside a function?
// //Can I change strokeStyle in redraw()?
