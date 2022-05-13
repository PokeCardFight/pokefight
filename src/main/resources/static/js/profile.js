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

$("#submit").click(function () {
    let imageURL = $("#fileupload").val();
    console.log(imageURL);
    $.ajax({
        type: "POST",
        url: "/search/api/getSearchResult",
        data: {url: imageURL},
        timeout: 100000,
        success: function (imageURL) {
            console.log("SUCCESS: ", imageURL);
        },
        error: function (e) {
            console.log("ERROR: ", e);
        },
        done: function (e) {
            console.log("DONE");
        }
    });
});
const form = $("#edit_form")

$("#submitEditform").click((e)=>{
    e.preventDefault();
let pass = $("#password").val();
let confirm = $("#confirmPass").val();

    console.log("pass="+pass +" , confirm :" +confirm )
    if (pass === confirm){
     form.submit();
    } else if(pass=== "") {
        alert("password cannot be empty!");
    } else {
        alert("passwords do not match!");
    }
});
