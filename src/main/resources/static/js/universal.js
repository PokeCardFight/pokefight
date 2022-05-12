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

//logo hyperlink cause anchor wanted to fight me
/*$('#logo').click(function() {
    window.location.href = '/';
})*/
//logout submission connector
$("#logout").click(()=>{
    $("form[name='logoutForm']").submit();
})
