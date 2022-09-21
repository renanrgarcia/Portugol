programa
{
	
	/*
	 * Desafio 11: Crie um algoritmo que leia três números e exiba os números em ordem crescente.
	 */
	
	real Numero1, Numero2, Numero3
	real MaiorNumero = 0.0, MenorNumero = 0.0

	// Objetivo: Receber três números e exiba os números em ordem crescente. 
	// Entradas: Três algarismos.
	// Saídas: Texto informando a relação entre os números.
	funcao inicio(){
		caracter Iniciar
		
		escreva("Esse programa apresenta em ordem crescente três números digitados. \n")
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

	
	// Objetivo: Definir a relação entre os algarismos caso dois ou três deles sejam iguais. 
	// Entradas: Três algarismos.
	// Saídas: Texto informando a relação entre os números.
	funcao CompararNumerosIguais() {
		// Os três números iguais.
		se (Numero1 == Numero2 e Numero2 == Numero3) {
			escreva("Os três números digitados são iguais. \n")
		} senao { // Para dois números iguais.
			se (Numero1 == Numero2) { // Numero1 = Numero2 > Numero3
				se (Numero1 > Numero3) {
					escreva("O 1º e o 2º números digitados são iguais e maiores que o 3º. \n")
				} senao { // Numero1 = Numero2 < Numero3
					escreva("O 1º e o 2º números digitados são iguais e menores que o 3º. \n")
				}
			}
			
			se (Numero1 == Numero3) { 	
				se (Numero1 > Numero2) { // Numero1 = Numero3 > Numero2
					escreva("O 1º e o 3º números digitados são iguais e maiores que o 2º. \n")
				} senao { // Numero1 = Numero3 < Numero2
					escreva("O 1º e o 3º números digitados são iguais e menores que o 2º. \n")
				}
			}
	
			se (Numero2 == Numero3) { 
				se (Numero2 > Numero1) { // Numero2 = Numero3 > Numero1
					escreva("O 2º e o 3º números digitados são iguais e maiores que o 1º. \n")
				}
				senao { // Numero2 = Numero3 < Numero1
					escreva("O 2º e o 3º números digitados são iguais e menores que o 1º. \n")
				}
			}
		}
	}

	// Objetivo: Definir a relação entre os três algarismos informados caso sejam diferentes entre si.
	// Entradas: Três algarismos.
	// Saídas: Texto informando a relação entre os números.
	funcao CompararNumerosDiferentes() { // Avalia qual dos dois números é maior e qual é o menor.
		real OrdemValores [3]
		
		// Definição do maior número.
		CalcularMaiorNumero()
		OrdemValores[0] = MaiorNumero 

		// Definição do menor
		CalcularMenorNumero()
		OrdemValores[2] = MenorNumero

		// Definição do médio
		se (Numero1 == MaiorNumero) {  
			se (Numero2 == MenorNumero){ // Numero1 > Numero3 > Numero2
				OrdemValores[1] = Numero3
			} senao se (Numero3 == MenorNumero) { // Numero1 > Numero2 > Numero3
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
		}
		
		// Retorno dos valores 
		escreva("O maior número é ", OrdemValores[0], ". \n")
		escreva("O número do meio é ", OrdemValores[1], ". \n")
		escreva("O menor número é ", OrdemValores[2], ". \n")
	}

	// Objetivo: Encontrar o maior entre os três algorismos digitados.
	// Entradas: Três algarismos.
	// Saídas: Maior número.
	funcao real CalcularMaiorNumero() {
		se (Numero1 > Numero2 e Numero1 > Numero3) {
			MaiorNumero = Numero1
		}
		se (Numero2 > Numero1 e Numero2 > Numero3) {
			MaiorNumero = Numero2
		}
		se (Numero3 > Numero1 e Numero3 > Numero2) {
			MaiorNumero = Numero3
		}		
		retorne MaiorNumero
	}

	// Objetivo: Encontrar o menor entre os três algorismos digitados.
	// Entradas: Três algarismos.
	// Saídas: Menor número.
	funcao real CalcularMenorNumero() {
		se (Numero1 < Numero2 e Numero1 < Numero3) {
			MenorNumero = Numero1
		}
		se (Numero2 < Numero1 e Numero2 < Numero3) {
			MenorNumero = Numero2
		}
		se (Numero3 < Numero1 e Numero3 < Numero2) {
			MenorNumero = Numero3
		}		
		retorne MenorNumero
	}
	
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 217; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {MaiorNumero, 9, 6, 11}-{MenorNumero, 9, 25, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */