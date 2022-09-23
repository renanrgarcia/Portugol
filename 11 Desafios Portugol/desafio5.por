programa
{

	/*
	 * Desafio 5:  Crie um algoritmo que leia um número inteiro e informe se ele é ou não 
	 * divisível por 7.
	*/

	caracter Iniciar = 's'
	
	// Objetivo: Lê um algarismo e informa se ele é ou não divisível por 7. 
	// Entradas: Número inteiro e resposta caracter.
	// Saídas: Texto informando a divisibilidade ou não por 7.
	funcao inicio(){
		escreva("Esse programa responde se o número digitado é divisível por 7. \n")
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
	    				AnalisarValor()
	    			}
			} enquanto (Iniciar != 'n') 
		}
	} 

	// Objetivo: Recebe o valor e avalia se é divisível por 7.
	// Entradas: Número inteiro.
	// Saídas: Texto informando a divisibilidade ou não por 7.
	funcao AnalisarValor() { 
		inteiro Numero
		
		escreva("Digite um número inteiro: ") 
		leia(Numero)
		se (Numero % 7 == 0) {
			escreva(Numero, " é divisível por 7. \n")
		} senao  {
			escreva(Numero, " não é divisível por 7. Resto da divisão: ", Numero % 7, ". \n")
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
 * @POSICAO-CURSOR = 971; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */