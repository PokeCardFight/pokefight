$("#logIn, #logInM").click(() => {
    $("#logInForm").toggleClass("hidden active");
})
const password = $("#loginPassword")
const passwordToggle = $("#loginPasswordToggle")
passwordToggle.click(() => {
    const type = password.attr("type") === "password" ? "text" : "password";
    password.attr("type", type);
    passwordToggle.children().toggleClass("fa-eye fa-eye-slash")
})

// pull favicon -- faviconLnk = document.querySelector('link[rel*="icon"]');

//nav bar dropdown
const navLinksM = $("#navLinksM")

$("#dropbtn").click(() => {
    /* When the user clicks on the button,
    toggle between hiding and showing the dropdown content */
    navLinksM.toggleClass("show drop");
})


// Close the dropdown menu if the user clicks outside it
$(window).click((event) => {
    if (!event.target.matches(".dropbtn") && !event.target.matches(".dropDown-content") && !event.target.matches("#MListBackground") && !event.target.matches(".unique-navbar")) {
        if (navLinksM.hasClass("show")) {
            navLinksM.removeClass("show");
            navLinksM.addClass("drop");
        }
    }
})
//navbar hider on bigger screens
const nav = $(".unique-navbar");
let lastScrollY = window.scrollY;

$(window).scroll(() => {
    if (lastScrollY > window.scrollY) {
        nav.removeClass("nav--hidden");
    } else {
        nav.addClass("nav--hidden");
    }
    lastScrollY = window.scrollY;
})

//logout submission connector
$("#logout, #logoutM").click(() => {
    $("form[name='logoutForm']").submit();
})
