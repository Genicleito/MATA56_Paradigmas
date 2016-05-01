function maiorBoxArtReduce() {
    var boxarts = [
            { width: 200, height:200, url: "http://cdn-0.nflximg.com/images/2891/Fracture200.jpg" },
            { width: 150, height:200, url: "http://cdn-0.nflximg.com/images/2891/Fracture150.jpg" },
            { width: 300, height:200, url: "http://cdn-0.nflximg.com/images/2891/Fracture300.jpg" },
            { width: 425, height:150, url: "http://cdn-0.nflximg.com/images/2891/Fracture425.jpg" }
        ],
        currentSize,
        maxSize = -1,
        largestBoxart;

    boxarts.reduce(function(boxart1, boxart2){
        if(boxart1.width * boxart1.height < boxart2.width * boxart2.height){
            largestBoxart = boxart2.width * boxart2.height;
            return boxart2;
        }else{
            largestBoxart = boxart1.width * boxart1.height;
            return boxart1;
        }
    });

    return largestBoxart;
}
ufbassert(63750, maiorBoxArtReduce());
