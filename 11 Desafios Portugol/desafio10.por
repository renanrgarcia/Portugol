programa
{	
	
	/*
	 * Desafio 10: Crie um algoritmo que leia a média das duas unidades (matérias) para calcular 
	 * a sua média final. Em seguida, exiba a média final e o resultado que pode ser aprovado, 
	 * prova final ou reprovado. A média de aprovação é 7, menor que 3 para reprovação e as demais 
	 * prova final.
	 */
	
	inclua biblioteca Matematica --> mat

	cadeia Nomes [2] = {"Matéria 1", "Matéria 2"} // Unidades(matérias)
	real Notas [2][4]  // Cada linha, as notas do aluno "l" nos bimestres
	real Media[2] // Média de cada bimestre
	
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
      		CalcularMedias()
			ImprimirBoletim()
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
	
	funcao CalcularMedias(){ // Solicita do usuário as notas de cada matéria e insere na matriz
		para(inteiro l=0; l<2; l++) {
			para (inteiro c=0; c<4; c++) {
				escreva("Digite a nota ", c+1, " da Matéria ", l+1, ": ")
				leia(Notas[l][c])
			}
		}
		para(inteiro l=0; l<2; l++) { // Soma todas as colunas de cada linha
			real Soma = 0.0
			para(inteiro c=0;c<4;c++){ 
				Soma += Notas[l][c]
			}
			Media[l] = Soma/4
			Media[l] = mat.arredondar(Media[l], 1) // Media arredondada com uma casa decimal
		}
		limpa()
	}
	
	funcao ImprimirBoletim(){
		cadeia Aprovado[2] 

		para (inteiro a=0; a<2; a++) { // Aprovação validada de acordo com a nota
			se(Media[a]>=7) { 
				Aprovado[a]="Aprovado"			
			} senao se(Media[a]<3) {
				Aprovado[a]="Reprovado"
			} senao {
				Aprovado[a]="Prova final"
			}
		}		
		// BOLETIM
		escreva("Obrigado! Segue o Boletim: \n")
		escreva("  ======================","\n")
		para (inteiro i=0; i<2; i++) { // Cria o boletim individual para cada matéria
		escreva("  Materia: "+Nomes[i],"\n")
		escreva("  ----------------------","\n")
		escreva("  1B    :   "+Notas[i][0],"\n")
		escreva("  2B    :   "+Notas[i][1],"\n")
		escreva("  3B    :   "+Notas[i][2],"\n")
		escreva("  4B    :   "+Notas[i][3],"\n")
		escreva("  ----------------------","\n")
		escreva("  Média:     "+Media[i],"\n")
		escreva("  Resultado: ",Aprovado[i],"\n")
		escreva("  ======================","\n \n")
		}
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2862; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */