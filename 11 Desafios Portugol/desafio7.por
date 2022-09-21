programa
{

	/*
	 * Desafio 7: Crie um algoritmo que leia dois valores diferentes e determine o maior.
	 */

	real Numero1 = 0.0, Numero2 = 0.0, MaiorNumero = 0.0, MenorNumero = 0.0
	
	funcao inicio(){
		caracter Iniciar
				
		escreva("Esse programa responde qual número é o maior entre dois digitados. \n")
		escreva("Você quer executar o programa? (s ou n) ") 
	leia(Iniciar)
	enquanto (Iniciar != 's' e Iniciar != 'n') { // Validação da resposta para iniciar o programa.
		limpa()
		escreva("Não entendi sua resposta. Você gostaria de executar o programa? (Digite s ou n) ")
		leia(Iniciar)
    		}
	limpa()
        
    	enquanto (Iniciar == 's') { // executa o teste enquanto o usuário quiser.
		CompararNumeros()
		escreva("Você quer executar o programa novamente? (s ou n) \n")
		leia(Iniciar)
		enquanto (Iniciar != 's' e Iniciar != 'n') { // Validação da resposta para iniciar o programa.
			limpa()
			escreva("Não entendi sua resposta. Você gostaria de executar o programa novamente? (Digite s ou n) ")
			leia(Iniciar)
      		}
      	limpa()
    		}
		 
		escreva("Obrigado por utilizar esse programa!")
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
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1450; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */