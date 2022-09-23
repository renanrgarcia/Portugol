programa
{

	/*
	 * Desafio 7: Crie um algoritmo que leia dois valores diferentes e determine o maior.
	 */

	real Numero1 = 0.0, Numero2 = 0.0, MaiorNumero = 0.0, MenorNumero = 0.0
	caracter Iniciar = 's'

	// Objetivo: Lê dois algarismos e retorna qual é o maior entre eles.
	// Entradas: Dois números reais
	// Saídas: Texto informando a relação entre os números.
	funcao inicio(){
		escreva("Esse programa responde qual número é o maior entre dois digitados. \n")
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
	    				CompararNumeros()
	    			}
			} enquanto (Iniciar != 'n') 
		}
	} 

	// Objetivo: Avaliar qual dos dois números é maior e qual é o menor.
	// Entradas: Dois algarismos.
	// Saídas: Maior número e menor número.
	funcao CompararNumeros() { 
		faca {
			escreva("Digite dois números diferentes: \n") 
			escreva("1º número: ") 
			leia(Numero1)
			escreva("2º número: ")
			leia(Numero2)
			limpa()
		}
		enquanto (Numero1 == Numero2)
		
		CalcularMaiorNumero() //Encontra o menor e o maior números.
		
		escreva("O maior número é ", MaiorNumero, ". \n")
		escreva("O menor número é ", MenorNumero, ". \n")
	}

	// Objetivo: Encontrar o maior entre os dois algorismos digitados.
	// Entradas: Dois algarismos.
	// Saídas: Maior número e menor número.
	funcao real CalcularMaiorNumero() {
		se (Numero1 > Numero2) {
			MaiorNumero = Numero1
			MenorNumero = Numero2
		} senao { 
			MaiorNumero = Numero2
			MenorNumero = Numero1
		}

		retorne MaiorNumero
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
 * @POSICAO-CURSOR = 2459; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */