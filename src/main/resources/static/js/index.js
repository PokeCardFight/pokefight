
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

