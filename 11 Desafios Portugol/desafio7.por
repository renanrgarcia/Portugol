programa
{

	/*
	 * Desafio 7: Crie um algoritmo que leia dois valores diferentes e determine o maior.
	 */
	
	inclua biblioteca Matematica --> mat
	
	funcao inicio(){
		caracter fim
		
		escreva("Esse programa responde qual número é o maior entre dois digitados. \n")
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
		escreva("Você quer executar o programa novamente? (s ou n) \n")
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
	
	funcao teste() { // Avalia qual dos dois números é maior e qual é o menor
		real num1, num2, maior, menor
		
		escreva("Digite dois números: \n") 
		escreva("1º número: ") 
		leia(num1)
		escreva("2º número: ")
		leia(num2)

		maior = mat.maior_numero(num1,num2) // Função que retorna qual maior valor
		menor = mat.menor_numero(num1,num2) // Função que retorna qual menor valor
		
		escreva("O maior número é ", maior, ". \n")
		escreva("O menor número é ", menor, ". \n")
	}
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 107; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */