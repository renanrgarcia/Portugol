programa
{
	
	/*
	 * Desafio 7: Crie um algoritmo que leia dois valores diferentes e determine o maior.
	 */
	
	inclua biblioteca Matematica --> mat
	
	funcao inicio(){
		caracter fim
		
		escreva("Esse programa apresenta em ordem crescente três números digitados. \n")
		escreva("Você quer executar o programa? (s ou n) ") 
    leia(fim)
	enquanto (fim != 's' e fim != 'n') { // Validação da resposta para iniciar o programa.
		limpa()
		escreva("Não entendi sua resposta. Você gostaria de executar o programa? (Digite s ou n) ")
		leia(fim)
    		}
	limpa()
        
	enquanto (fim == 's') { // executa o teste enquanto o usuário quiser.
		teste()
		escreva("Você quer executar o programa novamente? (s ou n) ")
		leia(fim)
		enquanto (fim != 's' e fim != 'n') { // Validação da resposta para iniciar o programa.
			limpa()
			escreva("Não entendi sua resposta. Você gostaria de executar o programa novamente? (Digite s ou n) ")
			leia(fim)
      		}
      	limpa()
    		}
	escreva("Obrigado por utilizar esse programa!")
	}


	// Objetivo: 
	// Par. ent:
	// 
	funcao teste() { // Avalia qual dos dois números é maior e qual é o menor
		real num1, num2, num3
		real menor, maior
		real ordem [3]
		
		escreva("Digite três números: \n") 
		escreva("1º número: ") 
		leia(num1)
		escreva("2º número: ")
		leia(num2)
		escreva("3º número: ")
		leia(num3)
		
		// Definição do maior
		maior = mat.maior_numero(num1,num2) 
		maior = mat.maior_numero(maior,num3)
		ordem[0] = maior 

		// Definição do menor
		menor = mat.menor_numero(num1,num2)
		menor = mat.menor_numero(menor,num3)
		ordem[2] = menor

		// Definição do médio
		se (num1 == maior) {  
			se (num2 == menor){ // num1 > num3 > num2
				ordem[1] = num3
			} senao se (num3 == menor) { // num1 > num2 > num3
				ordem[1] = num2
			}
		}

		se (num2 == maior) {  
			se (num1 == menor){ // num2 > num3 > num1
				ordem[1] = num3
			} senao se (num3 == menor) { // num2 > num1 > num3
				ordem[1] = num1
			}
		}

		se (num3 == maior) {  
			se (num2 == menor){ // num3 > num1 > num2
				ordem[1] = num1
			} senao se (num1 == menor) { // num3 > num2 > num1
				ordem[1] = num2
			}
		}

		// Retorno dos valores 
		escreva("O maior número é ", ordem[0], ". \n")
		escreva("O número do meio é ", ordem[1], ". \n")
		escreva("O menor número é ", ordem[2], ". \n")
			
	}
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 12; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */