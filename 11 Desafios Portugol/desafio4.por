programa
{
	/*
	 * Desafio 4:  Crie um algoritmo que leia três notas para calcular a média do aluno e 
	 * determinar se o mesmo foi aprovado ou reprovado. A média para aprovação é 6,5.
	*/

	inclua biblioteca Matematica --> mat
	caracter Iniciar = 's'

	// Objetivo: Receber as notas e calcular as médias.
	// Entradas: Notas e resposta para Iniciar.
	// Saídas: Médias e mensagem quanto a aprovação ou não.
	funcao inicio(){
		escreva("Esse programa calcula a média do aluno e determina se ele foi aprovado ou não. \n")
		enquanto (Iniciar == 's') {
			faca {
				escreva("Você quer executar o programa? (s ou n) ") 
	    			leia(Iniciar)
	    			ValidarSimOuNao() 
	    			limpa()
	    			se (Iniciar != 's' e Iniciar != 'n') { 
	    				CorrigirResposta() 
	    			}
	    			se (Iniciar == 'n') {
					escreva("Obrigado por utilizar esse programa!")
	    			} senao se (Iniciar == 's'){
	    				CalucularMedia()
	    			}
			} enquanto (Iniciar != 'n') 
		}
	} 

	// Objetivo: Receber as notas e calcular as médias.
	// Entradas: Notas.
	// Saídas: Médias e mensagem quanto a aprovação ou não.
	funcao CalucularMedia() { 
		real Nota[3]
		real MediaFinal
		
		para (inteiro n = 0; n <= 2; n++) {
			escreva("Digite a Nota " + (n+1) + ": ")
			leia(Nota[n])
			limpa()
		}
		MediaFinal = (Nota[0] + Nota[1] + Nota[2]) / 3
		MediaFinal = mat.arredondar(MediaFinal, 1) 
		// Função da biblioteca Matemática para arredondar para 1 casa decimal.
		escreva("A média do aluno é: " + MediaFinal +". \n") 

		se (MediaFinal >= 6.5) {
			escreva("Aluno aprovado! \n")
		} senao {
			escreva("Aluno reprovado! \n")
		}
	}

	// Objetivo: Transformar 'S' para 's' ou 'N' para 'n'.
	// Entradas: Input "Iniciar". Se diferente de 'S' ou 'N', a função é ignorada.
	// Saídas: 's' ou 'n'.
	funcao ValidarSimOuNao() {
		se (Iniciar == 'S') {
    			Iniciar = 's'	
    		}
    		se (Iniciar == 'N') {
    			Iniciar = 'n'	
    		}
	}

	// Objetivo: Validar resposta incorreta.
	// Entradas: Input "Iniciar". Se diferente de 's' ou 'n', solicita nova resposta.
	// Saídas: 's' ou 'n'.
	funcao CorrigirResposta() {
		enquanto (Iniciar != 's' e Iniciar != 'n') {
			escreva("Resposta inválida! Digite 's' para sim ou 'n' para não: ")
			leia(Iniciar)
			ValidarSimOuNao()
			limpa()
		}
	}	
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 389; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */