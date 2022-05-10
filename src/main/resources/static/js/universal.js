$("#logIn").click(() => {
    $("#logInForm").toggleClass("hidden active");
})
const password =$("#loginPassword")
const passwordToggle = $("#loginPasswordToggle")
passwordToggle.click(()=>{
    const type = password.attr("type") === "password"? "text": "password";
    password.attr("type", type);
    passwordToggle.children().toggleClass("fa-eye fa-eye-slash")
})

// pull favicon -- faviconLnk = document.querySelector('link[rel*="icon"]');