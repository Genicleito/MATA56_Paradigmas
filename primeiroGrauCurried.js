function primeiroGrauCurried(a) {
    return function(b) {
        // --- Escreva aqui seu código
        return function(x){
          return a * x + b;
        };
        // ---
    };
}
var resultado = primeiroGrauCurried(3)(2)(42);
alert(resultado);
