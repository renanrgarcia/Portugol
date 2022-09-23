programa
{

	/*
	 * Desafio 6:  Crie um algoritmo que leia um número inteiro e informe se ele é par ou ímpar.
	*/

	caracter Iniciar = 's'
	
	// Objetivo: Lê um algarismo e informa se ele é par ou ímpar. 
	// Entradas: Número real e resposta caracter.
	// Saídas: Texto informando a relação entre o número informado e 500.
	funcao inicio(){
		escreva("Esse programa responde se o número inteiro digitado é par ou é ímpar. \n")
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
	    				AvaliarValor()
	    			}
			} enquanto (Iniciar != 'n') 
		}
	} 

	// Objetivo: Receber o valor e avaliar se é par ou ímpar.
	// Entradas: Número inteiro.
	// Saídas: Texto informando se é par ou ímpar.
	funcao AvaliarValor() { 
		inteiro Numero
		
		escreva("Digite um número inteiro: ") 
		leia(Numero)
		se (Numero % 2 == 0) {
			escreva("O número ", Numero, " é par. \n")
		} senao  {
			escreva("O número ", Numero, " é ímpar. \n")
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
 * @POSICAO-CURSOR = 869; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */