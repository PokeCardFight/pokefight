function infoLoader(info){
    $(info).parents(".profile").toggleClass("fullscreen");
    $(info).parents(".profile").children("img").toggleClass("profile-Pop");
    $(info).parents(".profile").children(".open").toggleClass("drop");
}

/*$("#Noah > img").click(() => {
    $("#info").toggleClass("hidden");
})
$("#Manuel > img").click(() => {
    $("#info2").toggleClass("hidden");
})
$("#Michael > img").click(() => {
    $("#info3").toggleClass("hidden");
})
$("#Gerald > img").click(() => {
    $("#info4").toggleClass("hidden");
})*/
//
// $('#collapseExample').collapse({
//     toggle: false
// })
