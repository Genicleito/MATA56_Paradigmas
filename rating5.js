function meuMap(array, f) {
    var resultado = [];
    array.map(elemento => resultado.push(f(elemento)));
    return resultado;
}

function meuFilter(array, f) {
    var resultado = [];
    array.map(function (elemento){
        if(f(elemento)){
            return resultado.push(elemento);
        }
    });
    return resultado;
}

function rating5() {
    var newReleases = [
            {
                "id": 70111470,
                "title": "Die Hard",
                "boxart": "http://cdn-0.nflximg.com/images/2891/DieHard.jpg",
                "uri": "http://api.netflix.com/catalog/titles/movies/70111470",
                "rating": 4.0,
                "bookmark": []
            },
            {
                "id": 654356453,
                "title": "Bad Boys",
                "boxart": "http://cdn-0.nflximg.com/images/2891/BadBoys.jpg",
                "uri": "http://api.netflix.com/catalog/titles/movies/70111470",
                "rating": 5.0,
                "bookmark": [{ id:432534, time:65876586 }]
            },
            {
                "id": 65432445,
                "title": "The Chamber",
                "boxart": "http://cdn-0.nflximg.com/images/2891/TheChamber.jpg",
                "uri": "http://api.netflix.com/catalog/titles/movies/70111470",
                "rating": 4.0,
                "bookmark": []
            },
            {
                "id": 675465,
                "title": "Fracture",
                "boxart": "http://cdn-0.nflximg.com/images/2891/Fracture.jpg",
                "uri": "http://api.netflix.com/catalog/titles/movies/70111470",
                "rating": 5.0,
                "bookmark": [{ id:432534, time:65876586 }]
            }
        ];
/*        videos = [];

    newReleases.forEach(function(video) {
        if (video.rating === 5.0) {
            videos.push(video);
        }
    });
*/
    return meuMap(meuFilter(newReleases, video => video.rating == 5), video => ({id: video.id}));

    //return videos;
}
console.log(rating5());