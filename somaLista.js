//	Revisão Recursão (em JS)
//	somaLista

function somaLista(lista){
	var soma = 0;
	while (!lista.empty()){
		soma = soma + lista.car();
		lista = lista.cdr();
	}
	return soma;
}

//	Com Recursão de Cauda

function somaListaAcum (lista, acum){
	if(lista.empty()){
		return soma;
	}else{
		return somaListaAcum(lista.cdr, acum + lista.car());
	}
}

function somaLista (lista){
	return somaListaAcum(lista, 0);
}

console.log(somaLista([1, 2, 3]);
console.log(somaLista([]));