programa
{

	/*
	 * Desafio 6:  Crie um algoritmo que leia um número inteiro e informe se ele é par ou ímpar.
	*/
	
	funcao inicio(){
		caracter Iniciar
		
		escreva("Esse programa responde se o número inteiro digitado é par ou é ímpar. \n")
		escreva("Você quer executar o programa? (s ou n) ") 
    leia(Iniciar)
    enquanto (Iniciar != 's' e Iniciar != 'n') { // Validação da resposta para iniciar o programa.
      	limpa()
      	escreva("Não entendi sua resposta. Você gostaria de executar o programa? (Digite s ou n) ")
      	leia(Iniciar)
    		}
	limpa()
        
	enquanto (Iniciar == 's') { // executa o teste enquanto o usuário quiser.
		AvaliarValor()
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
	
	funcao AvaliarValor() { // Recebe o valor e avalia se é par ou ímpar.
		inteiro Numero
		
		escreva("Digite um número: ") 
		leia(Numero)
		se (Numero % 2 == 0) {
			escreva("O número ", Numero, " é par. \n")
		} senao  {
			escreva("O número ", Numero, " é ímpar. \n")
		}
	}
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1199; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */