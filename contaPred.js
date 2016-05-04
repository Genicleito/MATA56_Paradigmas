/*Questão 2

Escreva uma função em JavaScript que recebe um predicado e uma lista, e retorna o número de elementos na lista que satisfazem ao predicado. Use recursão profunda.

Dicas:

    A expressão x instanceof Array retorna verdadeiro somente se x for um array.
    A expressão lista.slice(1) retorna uma cópia de lista sem o seu primeiro elemento.
*/

function contaPred(pred, lista) {
  // --- aqui vem sua implementação
  if(lista.length == 0){
    return 0;
  }else if(lista[0] instanceof Array){
    return contaPred(pred, lista[0]) + contaPred(pred, lista.slice(1));
  }else if(pred(lista[0])){
  	return 1 + contaPred(pred, lista.slice(1));
  }else{
	return contaPred(pred, lista.slice(1));
  }
  // ---
}
// testes
teste(3, contaPred(x => x % 2 == 1, [1, [6, 3, [5]]]));
// --- escreva pelo menos mais dois casos de teste
teste(4, contaPred(x => x % 2 == 0, [1, [6, 3, [5, [2, 7, 18, [22]]]]]));
teste(4, contaPred(x => x % 2 == 1, [1, [6, 3, [5, [2, 7, 18, [22]]]]]));