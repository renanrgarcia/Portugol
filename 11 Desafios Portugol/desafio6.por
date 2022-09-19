programa
{
	
	funcao inicio(){
		caracter fim
		
		escreva("Esse programa responde se o número inteiro digitado é par ou é ímpar. \n")
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
	
	funcao teste() { // Recebe o valor e avalia se é par ou ímpar.
		inteiro numero
		
		escreva("Digite um número: ") 
		leia(numero)
		se (numero % 2 == 0) {
			escreva("O número ", numero, " é par. \n")
		} senao  {
			escreva("O número ", numero, " é ímpar. \n")
		}
	}
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 858; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */