+ Find some jquery cheat sheets
+ Figure out how you would build a calculator application using clickable divs instead of buttons and how to store data in the html content instead of in javascript variables
+ Figure out how to build a picture slider

I will try to build new apps using jquery, a calculator and a picture slider. 

### Resources: 
1. https://www.digitalocean.com/community/tutorials/an-introduction-to-jquery
2. http://api.jquery.com/
3. https://api.jquery.com/category/selectors/
4. https://api.jquery.com/category/events/
5. http://www.learningjquery.com/
6. https://plainjs.com/javascript/manipulation/

### most commonly used selectors(1):
+ $("*") - Wildcard: selects every element on the page.
+ $(this) - Current: selects the current element being operated on within a function.
+ $("p") - Tag: selects every instance of the <p> tag.
+ $(".example") - Class: selects every element that has the example class applied to it.
+ $("#example") - Id: selects a single instance of the unique example id.
+ $("[type='text']") - Attribute: selects any element with text applied to the type attribute.
+ $("p:first-of-type") - Pseudo Element: selects the first <p>

### most commonly used event methods:
+ click()- Click: executes on a single mouse click.
+ hover() - Hover: executes when the mouse is hovered over an element.
+ mouseenter() and mouseleave() apply only to the mouse entering or leaving an element, respectively.
+ submit() - Submit: executes when a form is submitted.
+ scroll() - Scroll: executes when the screen is scrolled.
+ keydown() - Keydown: executes when you press down on a key on the keyboard.

### most commonly used effect methods:
+ toggle() - Toggle: switches the visibility of an element or elements. show() and hide() are the related one-way effects.
+ fadeToggle() - Fade Toggle: switches the visibility and animates the opacity of an element or elements. fadeIn() and fadeOut() are the related one-way effects.
+ slideToggle() - Slide Toggle toggles the visibility of an element or elements with a sliding effect. slideDown() and slideUp() are the related one-way effects.
+ animate() - Animate performs custom animation effects on the CSS property of an element.

## My learnings:
jQuery is an API that makes Javascript be more readable and easier to write. I think the best way for me to learn is to build, so I am going to build a calculator using jquery.