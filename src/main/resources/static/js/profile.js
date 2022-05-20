//--| Edits Profile Data
const form = $("#edit_form");
$("#submitEditform").click((e)=>{
    e.preventDefault();

    let pass = $("#password").val();
    let confirm = $("#confirmPass").val();

    console.log("pass = " + pass + ", confirm = " + confirm);
    if (pass === confirm) form.submit();
    else if (pass === "") alert("password cannot be empty!");
    else alert("Passwords do not match!");
});

//--| Edits Profile Picture
const postProfileUrl = (data) => {
    let url = data.filesUploaded[0].url;
    $.ajax({
        type: "POST",
        url: "/profile/picture",
        data: {url: data.filesUploaded[0].url},
        timeout: 100000,
        success: url => window.location.reload(),
        error: e => console.log("ERROR: ", e),
        done: e => console.log('DONE: ', e)
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

}


const options = {
    onUploadDone: postProfileUrl, maxSize: 10 * 1024 * 1024,
    accept: 'image/*',
    uploadInBackground: false,
};
const apiKey = [[${apiKey}]];
console.log(apiKey);
let btn = document.querySelector('#picker');
btn.addEventListener('click', () => filestack.init(APIKEY).picker(options).open());