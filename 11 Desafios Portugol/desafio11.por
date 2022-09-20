programa
{
	
	/*
	 * Desafio 11: Crie um algoritmo que leia três números e exiba os números em ordem crescente.
	 */
	
	inclua biblioteca Matematica --> mat
	
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
		CompararNumeros()
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
	// Par. ent:
	// 
	funcao CompararNumeros() { // Avalia qual dos dois números é maior e qual é o menor
		real Numero1, Numero2, Numero3
		real Menor, Maior
		real OrdemValores [3]
		
		escreva("Digite três números: \n") 
		escreva("1º número: ") 
		leia(Numero1)
		escreva("2º número: ")
		leia(Numero2)
		escreva("3º número: ")
		leia(Numero3)
		
		// Definição do maior
		Maior = mat.maior_numero(Numero1,Numero2) 
		Maior = mat.maior_numero(Maior,Numero3)
		OrdemValores[0] = Maior 

		// Definição do menor
		Menor = mat.menor_numero(Numero1,Numero2)
		Menor = mat.menor_numero(Menor,Numero3)
		OrdemValores[2] = Menor

		// Definição do médio
		se (Numero1 == Maior) {  
			se (Numero2 == Menor){ // Numero1 > Numero3 > Numero2
				OrdemValores[1] = Numero3
			} senao se (Numero3 == Menor) { // Numero1 > Numero2 > Numero3
				OrdemValores[1] = Numero2
			}
		}

		se (Numero2 == Maior) {  
			se (Numero1 == Menor){ // Numero2 > Numero3 > Numero1
				OrdemValores[1] = Numero3
			} senao se (Numero3 == Menor) { // Numero2 > Numero1 > Numero3
				OrdemValores[1] = Numero1
			}
		}

		se (Numero3 == Maior) {  
			se (Numero2 == Menor){ // Numero3 > Numero1 > Numero2
				OrdemValores[1] = Numero1
			} senao se (Numero1 == Menor) { // Numero3 > Numero2 > Numero1
				OrdemValores[1] = Numero2
			}
		}

		// Retorno dos valores 
		escreva("O maior número é ", OrdemValores[0], ". \n")
		escreva("O número do meio é ", OrdemValores[1], ". \n")
		escreva("O menor número é ", OrdemValores[2], ". \n")
			
	}
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 100; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */