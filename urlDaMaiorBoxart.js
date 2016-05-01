function urlDaMaiorBoxart() {
    var boxarts = [
            { width: 200, height:200, url:"http://cdn-0.nflximg.com/images/2891/Fracture200.jpg" },
            { width: 150, height:200, url:"http://cdn-0.nflximg.com/images/2891/Fracture150.jpg" },
            { width: 300, height:200, url:"http://cdn-0.nflximg.com/images/2891/Fracture300.jpg" },
            { width: 425, height:150, url:"http://cdn-0.nflximg.com/images/2891/Fracture425.jpg" }
        ];

    return boxarts.reduce(function(anterior, corrente){
    	if(anterior.width * anterior.height > corrente.width * corrente.height){
    		return anterior;
    	}else{
    		return corrente;
    	}

    }).url;
}
ufbassert(["http://cdn-0.nflximg.com/images/2891/Fracture425.jpg"], urlDaMaiorBoxart());