function invert() {
  var x = document.getElementById("source_currency").selectedIndex;
  var y = document.getElementById("target_currency").selectedIndex;
  document.getElementById("source_currency").selectedIndex = y;
  document.getElementById("target_currency").selectedIndex = x;
}

window.addEventListener("load", () => {
  const links = document.querySelectorAll(
    "button"
  );
  links.forEach((element) => {
    element.addEventListener("click", (event) => {
      event.preventDefault();
      
      invert();
    });
  });
});