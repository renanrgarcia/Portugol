programa
{

	/*
	 * Desafio 5:  Crie um algoritmo que leia um número inteiro e informe se ele é ou não 
	 * divisível por 7.
	*/
	
	funcao inicio(){
		caracter Iniciar
		
		escreva("Esse programa responde se o número digitado é divisível por 7. \n")
		escreva("Você quer executar o programa? (s ou n) ") 
    leia(Iniciar)
    enquanto (Iniciar != 's' e Iniciar != 'n') { // Validação da resposta para iniciar o programa.
      	limpa()
      	escreva("Não entendi sua resposta. Você gostaria de executar o programa? (Digite s ou n) ")
      	leia(Iniciar)
    		}
    limpa()
        
    enquanto (Iniciar == 's') { // executa o teste enquanto o usuário quiser.
	     AnalisarValor()
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
	
	funcao AnalisarValor() { // Recebe o valor e avalia se é divisível por 7.
		inteiro Numero
		
		escreva("Digite um número: ") 
		leia(Numero)
		se (Numero % 7 == 0) {
			escreva(Numero, " é divisível por 7. \n")
		} senao  {
			escreva(Numero, " não é divisível por 7. Resto da divisão: ", Numero % 7, ". \n")
		}
	}
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1132; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */