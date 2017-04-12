// MANIPULATE TITLE

document.title = "Pandas are the best!";

console.log(document.title);

// CREATE AND INSERT NEW ELEMENT

var h1 = document.createElement("h1");

h1.textContent = "My Love For Pandas Knows No Bounds";

var pandaPhoto = document.getElementById("panda-photo");

var main = document.getElementsByTagName("main")[0];

main.insertBefore(h1, pandaPhoto);

// CREATE DOCUMENT FRAGMENT AND APPEND

var docFrag = document.createDocumentFragment()
var nav = document.getElementsByTagName("nav")[0]

img_srcs = [
'https://img-s3.onedio.com/id-56fa7e04cc6d04b27b2697a1/rev-1/raw/s-4ff0ab4f0d895caa5d332a5c95f6888872af36dd.jpg',
'http://factsd.com/wp-content/uploads/2016/09/panda-facts.jpg',
'http://ezpanda.com/images/pandas/originals/18a5kzrhxhqwvjpg.jpg'
]

for (var i = 0; i < 3; i++) {
  var li = document.createElement("li")
  var a = document.createElement("a")
  a.textContent = "Panda Image #" + (i + 1) 
  a.href = img_srcs[i]
  li.appendChild(a)
  docFrag.appendChild(li)
}

nav.appendChild(docFrag)

// ITERATE THROUGH NODE COLLECTIONS TO CHANGE STYLE

// CSS Selector Notation: <p> tags within <section> tags
paragraphs = document.querySelectorAll("section#text > p");

for (var i = 0; i < paragraphs.length; i++) {
  console.log(paragraphs[i].textContent)
}

// Change individual styles
paragraphs[0].style.color = "red";
paragraphs[1].style.color = "green";
paragraphs[2].style.fontWeight = "bold";

// Change all elements in collection to common style
buttons = document.getElementsByTagName("button");

for (var i = 0; i < buttons.length; i++) {
  console.log(buttons[i].textContent);
  buttons[i].style.backgroundColor = "blue";
  buttons[i].style.color = "white";
}

// ADD EVENT LISTENERS

function hello() {
  this.textContent = "HELLO!";
}

buttons[0].addEventListener("click", hello)

function showImage() {
  var panda_img = this.parentElement.lastElementChild;
  if (panda_img.style.display == "block") {
    panda_img.style.display = "none";
    this.textContent = "Click me!"
  } else {
    panda_img.style.display = "block";
    this.textContent = "Click me again!"
  }
}

buttons[1].addEventListener("click", showImage)
