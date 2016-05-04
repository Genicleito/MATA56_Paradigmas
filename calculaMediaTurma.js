/*Revisão Programação Funcional
Escreva uma função em JavaScript que recebe dados nessa estrutura e o número de uma turma e retorna a média das notas dos alunos que dessa turma. Não use estruturas de repetição (for, while, do) ou recursão. Use as funções alta ordem R.map, R.filter e R.reduce.*/

function calculaMediaTurma(dados, turma) {
  // --- aqui vem sua implementação
  var dadosTurma = R.filter(aluno => aluno.turma == turma, dados);
  var qtdAlunos = dadosTurma.length;
  if(qtdAlunos === 0){
    return 0;	//	Não existe divisão por 0
  }else{
    var somaNotas = R.reduce((soma, aluno) => soma + aluno.nota, 0, dadosTurma);
    return somaNotas / qtdAlunos;
  }
  // ---
}
// testes
teste(8, calculaMediaTurma([{nome: "A", turma: "1", nota: 8}], "1"));
// --- acrescente aqui os seus testes
teste(0, calculaMediaTurma([]));
teste(7, calculaMediaTurma([
      {nome: "A", turma: "1", nota: 6},
      {nome: "C", turma: "2", nota: 7}],
  "2"));
teste(7, calculaMediaTurma([
      {nome: "A", turma: "1", nota: 6},
      {nome: "B", turma: "1", nota: 8},
      {nome: "C", turma: "2", nota: 9}],
  "1"));