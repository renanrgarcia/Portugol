programa
{	
	/*
	 * Desafio 1: Crie um algoritmo que leia um número e alerte quando o mesmo for maior do que 500.
	 */
	
	funcao inicio(){
		caracter Iniciar
		
		escreva("Esse programa responde se o número digitado é maior do que 500. \n")
		escreva("Você quer executar o programa? (s ou n) ") 
    	leia(Iniciar)
	enquanto (Iniciar != 's' e Iniciar != 'n') { // Validação da resposta para iniciar o programa.
		limpa()
		escreva("Não entendi sua resposta. Você gostaria de executar o programa? (Digite s ou n) ")
		leia(Iniciar)
		}
    		limpa()
        
	enquanto (Iniciar == 's') { // Executa o teste enquanto o usuário quiser.
		CompararValor()
		escreva("Você quer executar o programa novamente? (s ou n) ")
		leia(Iniciar)
 		enquanto (Iniciar != 's' e Iniciar != 'n') { // Validação da resposta para iniciar o programa.
			limpa()
			escreva("Não entendi sua resposta. \n")
			escreva("Você gostaria de executar o programa novamente? (Digite s ou n) ")
			leia(Iniciar)
     		}
		limpa()
		}
	escreva("Obrigado por utilizar esse programa!")
	}
	
	funcao CompararValor() { // Recebe o valor e compara com 500.
		real Numero
		
		escreva("Digite um número: ") 
		leia(Numero)
		se (Numero > 500) {
			escreva("O número digitado é ", Numero, " que é maior que 500. \n")
		} senao se (Numero == 500) {
			escreva("O número digitado é exatamente ", Numero,". \n")
		}
		se (Numero < 500) {
			escreva("O número digitado é ", Numero, " que é menor que 500. \n")
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