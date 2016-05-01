function meuFilter(array, f) {
    var resultado = [];
    array.map(function (elemento){
        if(f(elemento)){
            return resultado.push(elemento);
        }
    });
    return resultado;
}

function mapIdTitle() {
    var newReleases = [
        {
            "id": 70111470,
            "title": "Die Hard",
            "boxart": "http://cdn-0.nflximg.com/images/2891/DieHard.jpg",
            "uri": "http://api.netflix.com/catalog/titles/movies/70111470",
            "rating": [4.0],
            "bookmark": []
        },
        {
            "id": 654356453,
            "title": "Bad Boys",
            "boxart": "http://cdn-0.nflximg.com/images/2891/BadBoys.jpg",
            "uri": "http://api.netflix.com/catalog/titles/movies/70111470",
            "rating": [5.0],
            "bookmark": [{ id:432534, time:65876586 }]
        },
        {
            "id": 65432445,
            "title": "The Chamber",
            "boxart": "http://cdn-0.nflximg.com/images/2891/TheChamber.jpg",
            "uri": "http://api.netflix.com/catalog/titles/movies/70111470",
            "rating": [4.0],
            "bookmark": []
        },
        {
            "id": 675465,
            "title": "Fracture",
            "boxart": "http://cdn-0.nflximg.com/images/2891/Fracture.jpg",
            "uri": "http://api.netflix.com/catalog/titles/movies/70111470",
            "rating": [5.0],
            "bookmark": [{ id:432534, time:65876586 }]
        }
    ];

    // ------------ INSERT CODE HERE! -----------------------------------
    return meuFilter(newReleases, filme => (filme.id % 2) == 0);
    // ------------ INSERT CODE HERE! -----------------------------------
}
// Este código verifica se sua resposta está correta.
// Se não estiver, aparece um erro no console.
var result = _.sortBy(mapIdTitle(), v => v.id);
var expected = [{"id":70111470,"title":"Die Hard", "boxart": "http://cdn-0.nflximg.com/images/2891/DieHard.jpg", "uri": "http://api.netflix.com/catalog/titles/movies/70111470", "rating": [4.0], "bookmark": []}];
ufbassert(expected, result);