function primeirosPred(n, pred, func) {
// --- chame a função func para cada número primo
    var i, num = 0, ehprimo, qtd = 0;
    while (qtd < n) {
        if (pred(num)) {
            qtd++;
          	func(num);
            console.log(num);
        }
        num++;
    }
// ---
}
function ehPrimo(num) {
    if (num <= 2) return false;
    for (i = 2; i < num; i++) {
        if (num % i === 0) return false;
    }
    return true;
}
function imprimePrimeirosPrimos(n) {
    primeirosPred(n, ehPrimo, (x) => console.log(x));
}
function retornaPrimeirosPrimos(n) {
    array = [];
    primeirosPred(n, ehPrimo, (x) => array.push(x));
    return array;
}
imprimePrimeirosPrimos(10);
console.log(retornaPrimeirosPrimos(10));
