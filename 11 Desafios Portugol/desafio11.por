programa
{
	
	/*
	 * Desafio 11: Crie um algoritmo que leia três números e exiba os números em ordem crescente.
	 */
	
	real Numero1, Numero2, Numero3
	real MaiorNumero, MenorNumero
	
	funcao inicio(){
		caracter Iniciar
		
		escreva("Esse programa apresenta em OrdemValores crescente três números digitados. \n")
		escreva("Você quer executar o programa? (s ou n) ") 
    leia(Iniciar)
	enquanto (Iniciar != 's' e Iniciar != 'n') { // Validação da resposta para iniciar o programa.
		limpa()
		escreva("Não entendi sua resposta. Você gostaria de executar o programa? (Digite s ou n) ")
		leia(Iniciar)
    		}
	limpa()
		
	enquanto (Iniciar == 's') { // executa o teste enquanto o usuário quiser.
		escreva("Digite três números: \n") 
		escreva("1º número: ") 
		leia(Numero1)
		escreva("2º número: ")
		leia(Numero2)
		escreva("3º número: ")
		leia(Numero3)
		limpa()

		se (Numero1 == Numero2 ou Numero2 == Numero3 ou Numero1 == Numero3) {
			CompararNumerosIguais()
		} senao {
			CompararNumerosDiferentes()
		}
		escreva("Você quer executar o programa novamente? (s ou n) ")
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

	
	// Objetivo: 
	// Entradas:
	// Saídas:
	funcao CompararNumerosIguais() {
		se (Numero1 == Numero2 e Numero2 == Numero3) {
			escreva("Os três números digitados são iguais. \n")
		}
		
		se (Numero1 == Numero2 e Numero1 > Numero3) {
			escreva("O 1º e o 2º números digitados são iguais e maiores que o 3º. \n")
			} senao se (Numero3 == MenorNumero) { // Numero1 > Numero2 > Numero3
				OrdemValores[1] = Numero2
			}
		}
	}


	// Objetivo: 
	// Par. ent:
	// 
	funcao CompararNumerosDiferentes() { // Avalia qual dos dois números é maior e qual é o menor
		real Menor
		real OrdemValores [3]
		
		// Definição do maior
		CalcularMaiorNumero()
		leia(MaiorNumero)
		OrdemValores[0] = MaiorNumero 

		// Definição do menor
		CalcularMenorNumero()
		OrdemValores[2] = MenorNumero

		// Definição do médio
		se (Numero1 == MaiorNumero) {  
			se (Numero2 == MenorNumero){ // Numero1 > Numero3 > Numero2
				OrdemValores[1] = Numero3
			} senao se (Numero3 == Menor) { // Numero1 > Numero2 > Numero3
				OrdemValores[1] = Numero2
			}
		}

		se (Numero2 == MaiorNumero) {  
			se (Numero1 == MenorNumero){ // Numero2 > Numero3 > Numero1
				OrdemValores[1] = Numero3
			} senao se (Numero3 == MenorNumero) { // Numero2 > Numero1 > Numero3
				OrdemValores[1] = Numero1
			}
		}

		se (Numero3 == MaiorNumero) {  
			se (Numero2 == MenorNumero){ // Numero3 > Numero1 > Numero2
				OrdemValores[1] = Numero1
			} senao se (Numero1 == MenorNumero) { // Numero3 > Numero2 > Numero1
				OrdemValores[1] = Numero2
			}

		}// Retorno dos valores 
		escreva("O maior número é ", OrdemValores[0], ". \n")
		escreva("O número do meio é ", OrdemValores[1], ". \n")
		escreva("O menor número é ", OrdemValores[2], ". \n")
	}
	
	funcao real CalcularMaiorNumero (){
		se (Numero1 > Numero2) {
			se (Numero1 > Numero3) {
				MaiorNumero = Numero1
			}
		}
		retorne MaiorNumero
	}
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3246; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */