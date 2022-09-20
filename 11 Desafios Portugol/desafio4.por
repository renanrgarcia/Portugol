programa
{
	/*
	 * Desafio 4:  Crie um algoritmo que leia três notas para calcular a média do aluno e 
	 * determinar se o mesmo foi aprovado ou reprovado. A média para aprovação é 6,5.
	*/
	
	inclua biblioteca Matematica --> mat
	
	funcao inicio(){
		caracter fim
		
		escreva("Esse programa calcula a média do aluno e determina se ele foi aprovado ou não. \n")
		escreva("Você quer executar o programa? (s ou n) ") 
	leia(fim)
	enquanto (fim != 's' e fim != 'n') { // Validação da resposta para iniciar o programa.
		limpa()
		escreva("Não entendi sua resposta. Você gostaria de executar o programa? (Digite s ou n) ")
		leia(fim)
    		}
	limpa()
        
    	enquanto (fim == 's') { // executa o teste enquanto o usuário quiser.
		media()
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
	
	funcao media() { // Recebe as notas e calcula a média.
		real nota[3]
		real mediaFinal
		
		para (inteiro n = 0; n <= 2; n++) { // Armazena as notas no vetor.
			escreva("Digite a nota " + (n+1) + ": ")
			leia(nota[n])
			limpa()
		}
		mediaFinal = (nota[0] + nota[1] + nota[2]) / 3
		mediaFinal = mat.arredondar(mediaFinal, 1) 
		// Função da biblioteca Matemática para arredondar para 1 casa decimal.
		escreva("A média do aluno é: " + mediaFinal +". \n") // Calcula a média.

		se (mediaFinal >= 6.5) {
			escreva("Aluno aprovado! \n")
		} senao {
			escreva("Aluno reprovado! \n")
		}
	}
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 12; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nota, 38, 7, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */