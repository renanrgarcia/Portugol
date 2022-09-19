programa
{	
	funcao inicio(){
		caracter fim
		
		escreva("Esse programa responde se o número digitado é maior do que 500. \n")
		escreva("Você quer executar o programa? (s ou n) ") 
    	leia(fim)
	enquanto (fim != 's' e fim != 'n') { // Validação da resposta para iniciar o programa.
		limpa()
		escreva("Não entendi sua resposta. Você gostaria de executar o programa? (Digite s ou n) ")
		leia(fim)
		}
    		limpa()
        
	enquanto (fim == 's') { // Executa o teste enquanto o usuário quiser.
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
	
	funcao teste() { // Recebe o valor e compara com 500.
		real numero
		
		escreva("Digite um número: ") 
		leia(numero)
		se (numero > 500) {
			escreva("O número digitado é ", numero, " que é maior que 500. \n")
		} senao se (numero == 500) {
			escreva("O número digitado é exatamente ", numero,". \n")
		}
		se (numero < 500) {
			escreva("O número digitado é ", numero, " que é menor que 500. \n")
		}
	}

} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1021; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */