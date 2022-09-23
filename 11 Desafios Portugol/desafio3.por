programa
{
	/*
	 * Desafio 3: Crie um algoritmo que leia um número e alerte quando o mesmo estiver entre -100 e 100.
	 */	

	caracter Iniciar = 's'

	// Objetivo: Ler um número e alertar quando o mesmo estiver entre -100 e 100.
	// Entradas: Número real e resposta caracter.
	// Saídas: Texto informando se o valor informado está ou não no intervalo.
	funcao inicio(){

		escreva("Esse programa responde se o número digitado está entre -100 e 100. \n")
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
	    				CompararValor()
	    			}
			} enquanto (Iniciar != 'n') 
		}
	} 

	// Objetivo: Receber o valor e avalia se está entre -100 e 100.
	// Entradas: Número real.
	// Saídas: Texto informando se o valor informado está ou não no intervalo.
	funcao CompararValor() { 
		real Numero
		
		escreva("Digite um número: ") 
		leia(Numero)
		se (Numero <= 100 e Numero >= -100) {
			escreva("O número digitado é ", Numero, " que está entre -100 e 100. \n")
		} senao  {
			escreva("O número digitado é ", Numero, " que não está entre -100 e 100. \n")
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
 * @POSICAO-CURSOR = 896; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */