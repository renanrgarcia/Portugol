programa
{	
	/*
	 * Desafio 1: Crie um algoritmo que leia um número e alerte quando o mesmo for maior do que 500.
	 */
	
	caracter Iniciar = 's'

	// Objetivo: Lê um algarismo e alerta quando ele for maior que 500. 
	// Entradas: Número real e resposta caracter.
	// Saídas: Texto informando a relação entre o número informado e 500.
	funcao inicio(){
		escreva("Esse programa responde se o número digitado é maior do que 500. \n")
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

	// Objetivo: Receber valor e comparar com 500.
	// Entradas: Número real.
	// Saídas: Texto informando a relação entre o número informado e 500.
	funcao CompararValor() {
		real Numero
		
		escreva("Digite um número: ") 
		leia(Numero)
		limpa()
		se (Numero > 500) {
			escreva("O número digitado é ", Numero, " que é maior que 500. \n")
		} senao se (Numero == 500) {
			escreva("O número digitado é exatamente ", Numero,". \n")
		}
		se (Numero < 500) {
			escreva("O número digitado é ", Numero, " que é menor que 500. \n")
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
 * @POSICAO-CURSOR = 1565; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {Iniciar, 7, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */