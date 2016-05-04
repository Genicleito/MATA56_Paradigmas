/*Questão 5

Preencha os parâmetros de R.pipe no código-fonte abaixo para que a função maximo retorne o maior valor ímpar da lista.*/

var maximo = R.pipe(
/* --- complete o codigo */
	R.filter(num => num % 2 == 1),
	R.reduce(
      (maior, num) => num > maior ? num : maior,
      -99999999)
/* --- */
);
// testes
teste(3, maximo([1, 2, 3, 4]));
teste(5, maximo([1, 2, 3, 4, 5]));
teste(-99999999, maximo([]));