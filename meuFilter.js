function meuFilter(array, f) {
    var resultado = [];
    array.map(function (elemento){
    	if(f(elemento)){
    		return resultado.push(elemento);
    	}
    });
    return resultado;
}
// Código de checagem
ufbassert([2, 4, 6], meuFilter([1, 2, 3, 4, 5, 6], elem => (elem % 2) == 0));
ufbassert([3, 4, 5, 6], meuFilter([1, 2, 3, 4, 5, 6], elem => (elem * 2) > 4));
//ufbassert([1,2,3], meuFilter([[1], [1, 2], [3, 2, 1]], elem => elem.length));