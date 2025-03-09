window.onscroll = () => {
    let backtopTop = document.querySelector(".back-to-top");
    if (document.documentElement.scrollTop > 100) {
      backtopTop.classList.add("active");
    } else {
      backtopTop.classList.remove("active");
    }
  };

