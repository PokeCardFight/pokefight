
$(".clickable").click(() => {
    $(this).parent().children(".popup_form").toggleClass("hidden active");
})
