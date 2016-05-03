// --- modifique imprimePrimeiros para receber
//     uma função.
function imprimePrimeiros(n, pred) {
    var i, num = 0, ehprimo, qtdprimos = 0;
    while (qtdprimos < n) {
        if (num >= 2) {
            ehprimo = pred(num);
            if (ehprimo) {
                qtdprimos++;
                console.log(num);
            }
        }
        num++;
    }
}
function ehPrimo(numero) {
 	var i;
    for (i = 2; i <= numero/2; i++) {
		if (numero % i === 0) {
			return false;
		}
	}
	return true;
}
// ---
function imprimePrimeirosPrimos(n) {
    imprimePrimeiros(n, ehPrimo);
}
imprimePrimeirosPrimos(10);
