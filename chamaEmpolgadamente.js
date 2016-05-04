/*Questão 4

Considere o código abaixo. Modifique a função main para que ela passe a considerar o nome passado como parâmetro, conforme exemplificado no teste.*/

function chamaEmpolgadamente(funcao) {
	return funcao() + "!!!";
}

function cumprimento(nome) {
	return "Alo, " + nome;
}

function main(nome) {
	return chamaEmpolgadamente(
	/* --- modifique esta função */
		() => cumprimento(nome)
  /* --- */
	);
}
// testes
teste("Alo, mundo!!!", main("mundo"));
// --- adicione pelo menos 2 testes
teste("Alo, universo!!!", main("universo"));
teste("Alo, !!!", main(""));