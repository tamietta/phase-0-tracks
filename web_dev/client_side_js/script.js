var first_img = document.querySelector('section.title > img');

first_img.src = "http://cdn.history.com/sites/2/2015/05/HITH-8-things-you-should-know-about-chinese-new-year.jpg";

var title = document.getElementsByTagName('h2')[0];

title.style.fontFamily = "Helvetica";

button = document.getElementsByTagName('button')[0];

button.addEventListener("click", function(){ first_img.src = 'https://c.tadst.com/gfx/750w/chinese-newyear-canada.jpg?1'; console.log("Happy Chinese New Year!") });