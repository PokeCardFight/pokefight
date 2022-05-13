/* let loader;

    function loadNow(opacity) {
    if (opacity <= 0) {
    displayContent();
} else {
    loader.style.opacity = opacity;
    window.setTimeout(function () {
    loadNow(opacity - .15);
}, 250);
}
}

    function displayContent() {
    loader.style.display = 'none';
    document.getElementById('content').style.display = 'block';
}

    document.addEventListener("DOMContentLoaded", function () {
    loader = document.getElementById('loader');
    loadNow(1);
});*/


const loader = $("#loader");

function openingGif() {
    //gif randomizer
    let gifs, random;
    gifs = ['', '2', '3', '4', '5']

    random = Math.floor(Math.random() * 5);
    loader.attr('src', "static/img/opening" + gifs[random] + ".gif");

}

    openingGif();
    // the loader-deloader
    setTimeout(()=>{loader.toggleClass("active hidden")}, 2000);

