programa
{
	/*
	 * Desafio 4:  Crie um algoritmo que leia três notas para calcular a média do aluno e 
	 * determinar se o mesmo foi aprovado ou reprovado. A média para aprovação é 6,5.
	*/
	
	inclua biblioteca Matematica --> mat
	
	funcao inicio(){
		caracter Iniciar
		
		escreva("Esse programa calcula a média do aluno e determina se ele foi aprovado ou não. \n")
		escreva("Você quer executar o programa? (s ou n) ") 
	leia(Iniciar)
	enquanto (Iniciar != 's' e Iniciar != 'n') { // Validação da resposta para iniciar o programa.
		limpa()
		escreva("Não entendi sua resposta. Você gostaria de executar o programa? (Digite s ou n) ")
		leia(Iniciar)
    		}
	limpa()
        
    	enquanto (Iniciar == 's') { // executa o teste enquanto o usuário quiser.
		CalucularMedia()
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
	
	funcao CalucularMedia() { // Recebe as notas e calcula a média.
		real Nota[3]
		real MediaFinal
		
		para (inteiro n = 0; n <= 2; n++) { // Armazena as notas no vetor.
			escreva("Digite a Nota " + (n+1) + ": ")
			leia(Nota[n])
			limpa()
		}
		MediaFinal = (Nota[0] + Nota[1] + Nota[2]) / 3
		MediaFinal = mat.arredondar(MediaFinal, 1) 
		// Função da biblioteca Matemática para arredondar para 1 casa decimal.
		escreva("A média do aluno é: " + MediaFinal +". \n") // Calcula a média.

		se (MediaFinal >= 6.5) {
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
 * @POSICAO-CURSOR = 1023; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */