$(document).ready(()=>{
    setTimeout(()=>{$("#logInForm").removeClass("drop");$("#how-toForm").removeClass("drop")},400);
})

$("#logIn, #logInM, #loginX").click((e) => {
    e.preventDefault()
    $("#logInForm").toggleClass("hidden active");
    $(".dropbtn").toggleClass("hidden active")

})

let howtoForm= $("#how-toForm");
$("#how-toFormX, #how-to, #how-toM").click((e) => {
    e.preventDefault()
    howtoForm.toggleClass("hidden active");
    $(".dropbtn").toggleClass("hidden active");
    $("#how-to, #how-toM").toggleClass("highlighted")
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
    navLinksM.toggleClass("hidden active");
})

//mobile login name transition
$("#logInM, #loginX").click(()=>{
    $("#mobileLoginName").toggleClass("loginNameJump");
})
// Close the dropdown menu if the user clicks outside it
$(window).click((event) => {
    if (!event.target.matches(".unique-navbar *")) {

            if (navLinksM.hasClass("active")) {
                navLinksM.removeClass("active");
                navLinksM.addClass("hidden");
            }

    }
})
// Close the how to popup if the user clicks anywhere

$(window).click((event) => {

    if (!event.target.matches("#how-to, #how-toM")) {
        if (howtoForm.hasClass("active")) {
            howtoForm.removeClass("active");
            howtoForm.addClass("hidden");
            $("#how-to, #how-toM").removeClass("highlighted")
        }

    }
})
//navbar hider when scrolled down
const nav = $(".unique-navbar");
let lastScrollY = window.scrollY;

$(window).scroll(() => {
    if (lastScrollY >= window.scrollY) {
        nav.removeClass("nav--hidden");
    } else {
        nav.addClass("nav--hidden");
    }
    lastScrollY = window.scrollY;
})


//logout submission connector
$("#logout, #logoutM").click(() => {
    $("#logoutForm").submit();
})
