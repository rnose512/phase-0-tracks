var change = document.getElementById('change');
change.style.color = 'pink';

var newElement = document.createElement('h3');
var newContent = document.createTextNode('Cat Colors');
newElement.appendChild(newContent);

var currentTag = document.getElementById('list');
document.body.insertBefore(newElement, currentTag);

function addRedBorder(event) {
  event.target.style.border = '1px dashed red';
}


var border = document.getElementById('border');
border.addEventListener('click', addRedBorder);

