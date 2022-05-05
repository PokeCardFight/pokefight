
$(".clickable").click(() => {
    $(this).parent().get(0).children().toggleClass("hidden active");
})
