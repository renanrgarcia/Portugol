programa
{

	/*
	 * Desafio 5:  Crie um algoritmo que leia um número inteiro e informe se ele é ou não 
	 * divisível por 7.
	*/
	
	funcao inicio(){
		caracter fim
		
		escreva("Esse programa responde se o número digitado é divisível por 7. \n")
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
	
	funcao teste() { // Recebe o valor e avalia se é divisível por 7.
		inteiro numero
		
		escreva("Digite um número: ") 
		leia(numero)
		se (numero % 7 == 0) {
			escreva(numero, " é divisível por 7. \n")
		} senao  {
			escreva(numero, " não é divisível por 7. Resto da divisão: ", numero % 7, ". \n")
		}
	}
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 125; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */