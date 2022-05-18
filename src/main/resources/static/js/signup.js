const signPassword = $("#signUpPassword")
const signPasswordToggle = $("#signUpPasswordToggle")
const passwordCon = $("#signUpPasswordConfirm")

signPasswordToggle.click(() => {
    console.log(signPassword.attr("type"));
    const type = signPassword.attr("type") === "password" ? "text" : "password";
    signPassword.attr("type", type);

    const type2 = passwordCon.attr("type") === "password" ? "text" : "password";
    passwordCon.attr("type", type2);

    signPasswordToggle.children().toggleClass("fa-eye fa-eye-slash")
})

