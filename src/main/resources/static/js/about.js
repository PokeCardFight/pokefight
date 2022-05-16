function infoLoader(info){
    $(info).parents(".profile").toggleClass("fullscreen");
    $(info).parents(".profile").children("img").toggleClass("profile-Pop");
    $(info).parents(".profile").children(".open").toggleClass("drop");
}
