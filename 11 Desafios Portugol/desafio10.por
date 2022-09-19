programa
{	
	inclua biblioteca Matematica --> mat

	cadeia nomes [2] = {"Matéria 1", "Matéria 2"} // Unidades(matérias)
	real notas [2][4]  // Cada linha, as notas do aluno "l" nos bimestres
	real media[2] // Média de cada bimestre
	
	funcao inicio()
	{
		caracter fim
		
		escreva("Esse programa calcula a média final e apresenta se o aluno foi aprovado, reprovado ou fará prova final. \n")
		escreva("Você quer executar o programa? (s ou n) ") 
		leia(fim)
		enquanto (fim != 's' e fim != 'n') { // Validação da resposta para iniciar o programa.
			limpa()
			escreva("Não entendi sua resposta. Você gostaria de executar o programa? (Digite s ou n) ")
			leia(fim)
			}
		limpa()

		enquanto (fim == 's') { // executa o teste enquanto o usuário quiser.
      		medias()
			boletim()
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
	
	funcao medias(){ // Solicita do usuário as notas de cada matéria e insere na matriz
		para(inteiro l=0; l<2; l++) {
			para (inteiro c=0; c<4; c++) {
				escreva("Digite a nota ", c+1, " da Matéria ", l+1, ": ")
				leia(notas[l][c])
			}
		}
		para(inteiro l=0; l<2; l++) { // Soma todas as colunas de cada linha
			real soma = 0.0
			para(inteiro c=0;c<4;c++){ 
				soma += notas[l][c]
			}
			media[l] = soma/4
			media[l] = mat.arredondar(media[l], 1) // Media arredondada com uma casa decimal
		}
		limpa()
	}
	
	funcao boletim(){
		cadeia aprovado[2] 

		para (inteiro a=0; a<2; a++) { // Aprovação validada de acordo com a nota
			se(media[a]>=7) { 
				aprovado[a]="Aprovado"			
			} senao se(media[a]<3) {
				aprovado[a]="Reprovado"
			} senao {
				aprovado[a]="Prova final"
			}
		}		
		// BOLETIM
		escreva("Obrigado! Segue o Boletim: \n")
		escreva("  ======================","\n")
		para (inteiro i=0; i<2; i++) { // Cria o boletim individual para cada matéria
		escreva("  Materia: "+nomes[i],"\n")
		escreva("  ----------------------","\n")
		escreva("  1B    :   "+notas[i][0],"\n")
		escreva("  2B    :   "+notas[i][1],"\n")
		escreva("  3B    :   "+notas[i][2],"\n")
		escreva("  4B    :   "+notas[i][3],"\n")
		escreva("  ----------------------","\n")
		escreva("  Média:     "+media[i],"\n")
		escreva("  Resultado: ",aprovado[i],"\n")
		escreva("  ======================","\n \n")
		}
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2584; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */