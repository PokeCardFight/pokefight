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
setTimeout(() => {
    loader.toggleClass("active hidden")
}, 2000);
//tired of the intro page? click it!
loader.click(() => {
    loader.toggleClass("drop");
})

//volume and audio control
let mpg = document.getElementById("music");
let mp3s = ['GymLeader_Gold', 'GymLeader_Red', 'Rival_Gold', 'TrainerBattle_Gold', 'TrainerBattle_Red', 'WildBattle_Gold', 'WildBattle_Red'];


(function playlistRandomizer() {
    //literally just the loader playlist converted for our mp3s
    let random = Math.floor(Math.random() * 7);
    $("#music").attr('src', "static/mp3/" + mp3s[random]+".mp3");
    //also put the name of song here
    $("#currently-playing").html(mp3s[random])

})()


mpg.volume = 0.25;
setTimeout(() => {
    fadeThenPause()
}, 3000);

//fadeout

function FadeAudio(i) {
    setTimeout(() => {
        mpg.volume -= 0.05;
    },i)

/*none of these do exactly what i want. i want it to lower to 0, then stop lowering the vol. so, i will have to brute force it*/
    /*
    for (let i = 0; i <= 10;) {
delayed();
        i++
    }*/
    /*let fadeAudio = setInterval(function () {
        mpg.volume -= 0.05;
        // When volume at zero stop all the intervalling
        if (mpg.volume === 0) {
            clearInterval(fadeAudio);
        }
    },400);
    */
}
/*function delayed() {
    setTimeout(() => {
        mpg.volume -= 0.05;
    }, 400);
}*/
function multiplier(x){ //maths
    return x*600;
}
function fadeThenPause() {
    FadeAudio(multiplier(1));
    FadeAudio(multiplier(2));
    FadeAudio(multiplier(3));
    FadeAudio(multiplier(4));
    FadeAudio(multiplier(5));/* half-ed the volume
    FadeAudio(multiplier(6));
    FadeAudio(multiplier(7));
    FadeAudio(multiplier(8));
    FadeAudio(multiplier(9));
    FadeAudio(multiplier(10));*/ // YEAAHHH BRUTE FORCE WORKED
    setTimeout(() => {
        mpg.pause()
    }, 4500)
} // preform fade audio, wait 3 seconds, then pause audio


let playlist = $("#playlist")
function list(){
    playlist.toggleClass("hidden active");
}


function fillList(i) {
    playlist.children().append("<li onclick='playSong("+i+")'>"+mp3s[i]+"</li>");
}

for (let i = 0; i < mp3s.length; i++){
    fillList(i);
}

function playSong(i){
    $("#music").attr('src', "static/mp3/" + mp3s[i]+".mp3");
    //also put the name of song here
    $("#currently-playing").html(mp3s[i])
}

// Close the playlist menu if the user clicks outside it
$(window).click((event) => {

    if (!event.target.matches("#theList")) {

        if (playlist.hasClass("active")) {
            playlist.removeClass("active");
            playlist.addClass("hidden");
        }

    }
})