programa
{		
	/*
	 * Desafio 10: Crie um algoritmo que leia a média das duas unidades (matérias) para calcular 
	 * a sua média final. Em seguida, exiba a média final e o resultado que pode ser aprovado, 
	 * prova final ou reprovado. A média de aprovação é 7, menor que 3 para reprovação e as demais 
	 * prova final.
	 */
	 
	inclua biblioteca Matematica --> mat
	caracter Iniciar = 's'
	cadeia Nomes [2] = {"Matéria 1", "Matéria 2"} // Unidades(matérias)
	real Notas [2][4]  // Cada linha, as notas do aluno "l" nos bimestres
	real Media[2] // Média de cada bimestre
	
	// Objetivo: Lê notas de um aluno por matéria e exibe um boletim de acordo com as médias obtidas.
	// Entradas: Notas.
	// Saídas: Texto informando a relação entre o número informado e 500.
	funcao inicio(){
		escreva("Esse programa calcula a média final e apresenta se o aluno foi aprovado, reprovado ou fará prova final. \n")
		enquanto (Iniciar == 's') {
			faca {
				escreva("Você quer executar o programa? (s ou n) ") 
	    			leia(Iniciar)
	    			ValidarSimOuNao() 
	    			limpa()
	    			se (Iniciar != 's' e Iniciar != 'n') { 
	    				CorrigirResposta() 
	    			}
	    			se (Iniciar == 'n') {
					escreva("Obrigado por utilizar esse programa!")
	    			} senao se (Iniciar == 's'){
	    				CalcularMedias()
					ImprimirBoletim()
	    			}
			} enquanto (Iniciar != 'n') 
		}
	} 

	// Objetivo: Solicitar do usuário as notas de cada matéria e calcular a média.
	// Entrada: Notas.
	// Saída: Médias.
	funcao CalcularMedias(){ 
		para(inteiro l=0; l<2; l++) {
			para (inteiro c=0; c<4; c++) {
				escreva("Digite a nota ", c+1, " da Matéria ", l+1, ": ")
				leia(Notas[l][c])
			}
		}
		para(inteiro l=0; l<2; l++) { // Soma todas as colunas de cada linha
			real Soma = 0.0
			para(inteiro c=0;c<4;c++){ 
				Soma += Notas[l][c]
			}
			Media[l] = Soma/4
			Media[l] = mat.arredondar(Media[l], 1) // Media arredondada com uma casa decimal
		}
		limpa()
	}

	// Objetivo: Apresentar o boletim por matéria e informar se foi aprovado ou não.
	// Entrada: Médias.
	// Saída: Boletim impresso.
	funcao ImprimirBoletim(){
		cadeia Aprovado[2] 

		para (inteiro a=0; a<2; a++) { // Aprovação validada de acordo com a nota
			se(Media[a]>=7) { 
				Aprovado[a]="Aprovado"			
			} senao se(Media[a]<3) {
				Aprovado[a]="Reprovado"
			} senao {
				Aprovado[a]="Prova final"
			}
		}		
		// BOLETIM
		escreva("Obrigado! Segue o Boletim: \n")
		escreva("  ======================","\n")
		para (inteiro i=0; i<2; i++) { // Cria o boletim individual para cada matéria
		escreva("  Materia: "+Nomes[i],"\n")
		escreva("  ----------------------","\n")
		escreva("  1B    :   "+Notas[i][0],"\n")
		escreva("  2B    :   "+Notas[i][1],"\n")
		escreva("  3B    :   "+Notas[i][2],"\n")
		escreva("  4B    :   "+Notas[i][3],"\n")
		escreva("  ----------------------","\n")
		escreva("  Média:     "+Media[i],"\n")
		escreva("  Resultado: ",Aprovado[i],"\n")
		escreva("  ======================","\n \n")
		}
	}	
	
	// Objetivo: Transformar 'S' para 's' ou 'N' para 'n'.
	// Entradas: Input "Iniciar". Se diferente de 'S' ou 'N', a função é ignorada.
	// Saídas: 's' ou 'n'.
	funcao ValidarSimOuNao() {
		se (Iniciar == 'S') {
    			Iniciar = 's'	
    		}
    		se (Iniciar == 'N') {
    			Iniciar = 'n'	
    		}
	}

	// Objetivo: Validar resposta incorreta.
	// Entradas: Input "Iniciar". Se diferente de 's' ou 'n', solicita nova resposta.
	// Saídas: 's' ou 'n'.
	funcao CorrigirResposta() {
		enquanto (Iniciar != 's' e Iniciar != 'n') {
			escreva("Resposta inválida! Digite 's' para sim ou 'n' para não: ")
			leia(Iniciar)
			ValidarSimOuNao()
			limpa()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2079; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */