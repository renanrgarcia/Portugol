programa
{
	
	/*
	 * Desafio 8: Crie um algoritmo que após receber o Salário Bruto, calcule o salário líquido 
	 * descontando 25% quando o salário bruto for menor que R$ 2000, caso contrário descontar 35%. 
	 * No final, exiba o salário líquido.
	 */
	
	inclua biblioteca Matematica --> mat
	
	funcao inicio(){
		caracter fim
		
		escreva("Esse programa calcula o salário líquido após o desconto necessário. \n")
		escreva("Você quer executar o programa? (s ou n) ") 
	leia(fim)
	enquanto (fim != 's' e fim != 'n') { // Validação da resposta para iniciar o programa.
		limpa()
		escreva("Não entendi sua resposta. Você gostaria de executar o programa? (Digite s ou n) ")
		leia(fim)
    		}
    	limpa()
        
    	enquanto (fim == 's') { // executa o teste enquanto o usuário quiser.
		leao()
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
	
	funcao leao() { // Recebe o salário bruto e faz o desconto correpondente ao montante informado.
		real bruto, liquido
		
		escreva("Digite o salário bruto: R$ ") 
		leia(bruto)
		
		se (bruto < 2000) { // Aplicação do desconto dependendo do valor bruto recebido.
			liquido = bruto - bruto * 0.25
			liquido = mat.arredondar(liquido, 2)
			escreva("O salário líquido é R$ ", liquido, ". \n")
		} senao  {
			liquido = bruto - bruto * 0.35
			liquido = mat.arredondar(liquido, 2)
			escreva("O número digitado é R$ ", liquido, ". \n")
		}
	}
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 247; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */