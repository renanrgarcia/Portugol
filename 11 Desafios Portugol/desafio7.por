programa
{

	/*
	 * Desafio 7: Crie um algoritmo que leia dois valores diferentes e determine o maior.
	 */
	
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
	
	funcao CompararNumeros() { // Avalia qual dos dois números é maior e qual é o menor
		real Numero1, Numero2, NumeroMaior, NumeroMenor
		
		escreva("Digite dois números: \n") 
		escreva("1º número: ") 
		leia(Numero1)
		escreva("2º número: ")
		leia(Numero2)

		NumeroMaior = mat.maior_numero(Numero1,Numero2) // Função que retorna qual maior valor
		NumeroMenor = mat.menor_numero(Numero1,Numero2) // Função que retorna qual menor valor
		
		escreva("O maior número é ", NumeroMaior, ". \n")
		escreva("O menor número é ", NumeroMenor, ". \n")
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