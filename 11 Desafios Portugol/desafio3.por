programa
{
	/*
	 * Desafio 3: Crie um algoritmo que leia um número e alerte quando o mesmo estiver entre 100 e 100.
	 */	
	
	funcao inicio(){
		caracter fim
		
		escreva("Esse programa responde se o número digitado está entre -100 e 100. \n")
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
	
	funcao teste() { // Recebe o valor e avalia se está entre -100 e 100.
		real numero
		
		escreva("Digite um número: ") 
		leia(numero)
		se (numero <= 100 e numero >= -100) {
			escreva("O número digitado é ", numero, " que está entre -100 e 100. \n")
		} senao  {
			escreva("O número digitado é ", numero, " que não está entre -100 e 100. \n")
		}
	} 
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 28; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */