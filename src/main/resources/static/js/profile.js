//edit profile form

$("#edit-prof").click(() => {
    $("#edit-profile").toggleClass("hidden active");
})
$("#close-edit").click(() => {
//these will make sure it's opened on click. not just toggled
    $("#edit-profile").toggleClass("hidden active");
})

//picture form
$("#edit-pic").click(() => {
    $("#edit-picture").toggleClass("hidden active");
})

$("#close-pic").click(() => {
//these will make sure it's opened on click. not just toggled
    $("#edit-picture").toggleClass("hidden active");
})
//this last one swaps between the two forms if chosen
$("#pic-from-edit").click(() => {
    $("#edit-profile").toggleClass("hidden active");
    $("#edit-picture").toggleClass("hidden active");
})