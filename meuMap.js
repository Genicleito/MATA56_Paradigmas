function meuMap(array, f) {
    var resultado = [];
    array.map(elemento => resultado.push(f(elemento)));
    return resultado;
}
// Código de checagem
ufbassert([], meuMap([], elem => elem * 2));
ufbassert([1,2,3], meuMap([[1], [1, 2], [3, 2, 1]], elem => elem.length));