// Hàm thay đổi mũi tên
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

//Hàm load file lên indexAdmin
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
        .then((response) => response.text()) //Mong đợi phản hồi từ server là HTML
        .then((data) => {
          document.getElementById("middle-content").innerHTML = data;
          // Gán lại sự kiện load và click của chart
          if (url.includes("dashboard.php")) {
            chartYear();
            clickChart();
          }
        })
        .catch((error) => console.error("Error:", error));
    });
  });
});

function setActiveButton(activeBtn, inactiveBtn) {
  document.querySelector(activeBtn).classList.add("active");
  document.querySelector(inactiveBtn).classList.remove("active");
}

// Hàm vẽ biểu đồ
function drawChart(xValues, yValues, barColors) {
  new Chart("myChart", {
    type: "bar",
    data: {
      labels: xValues,
      datasets: [
        {
          backgroundColor: barColors,
          data: yValues,
        },
      ],
    },
    options: {
      legend: { display: false },
      title: { display: true },
    },
  });
}

// Hàm hiển thị biểu đồ theo năm
function chartYear() {
  setActiveButton("#btn_chart_year", "#btn_chart_month");
  drawChart(
    ["Italy1", "France1", "Spain1", "USA1", "Argentina1"],
    [55, 49, 44, 24, 15],
    ["red", "green", "blue", "orange", "brown"]
  );
}

// Hàm hiển thị biểu đồ theo tháng
function chartMonth() {
  setActiveButton("#btn_chart_month", "#btn_chart_year");
  drawChart(
    ["Italy2", "France2", "Spain2", "USA2", "Argentina2"],
    [55, 49, 44, 24, 15],
    ["red", "green", "blue", "orange", "brown"]
  );
}

function clickChart() {
  document
    .querySelector("#btn_chart_year")
    .addEventListener("click", chartYear);
  document
    .querySelector("#btn_chart_month")
    .addEventListener("click", chartMonth);
}

document.addEventListener("DOMContentLoaded", function () {
  chartYear();
  clickChart();
});
