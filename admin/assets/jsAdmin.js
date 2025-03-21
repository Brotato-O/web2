document.addEventListener("DOMContentLoaded", function clickItemNavBar() {
  let e = document.querySelectorAll(".navbar li.dropdown > a.nav-link");
  e.forEach((item) => {
    item.addEventListener("click", function () {
      let icon = this.querySelector("i.fa-angle-left, i.fa-angle-down"); //trỏ tới item
      if (icon) {
        if (icon.classList.contains("fa-angle-left")) {
          icon.classList.replace("fa-angle-left", "fa-angle-down");
        } else {
          icon.classList.replace("fa-angle-down", "fa-angle-left");
        }
      }
    });
  });
});

document.addEventListener("DOMContentLoaded", function () {
  const links = document.querySelectorAll(
    "#sidebar a.nav-link, #sidebar a.dropdown-item"
  );
  links.forEach((link) => {
    link.addEventListener("click", function (event) {
      event.preventDefault();
      //Bỏ qua thuộc tính dropdown
      if (this.getAttribute("data-bs-toggle") === "dropdown") {
        return;
      }
      const url = this.getAttribute("href");
      fetch(url)
        .then((response) => response.text())
        .then((data) => {
          document.getElementById("middle-content").innerHTML = data;
        })
        .catch((error) => console.error("Error:", error));
    });
  });
});
