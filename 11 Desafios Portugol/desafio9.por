programa
{
	
	/*
	 * Desafio 9: Um comerciante comprou um produto e quer vendê-lo com um lucro de 50% se o 
	 * valor da compra for menor que R$ 200, caso contrário o lucro será de 31,5%. Crie um 
	 * algoritmo que leia o valor da compra e exiba o valor da venda.
	 */
	
	inclua biblioteca Matematica --> mat
	
	funcao inicio(){
		caracter fim
		
		escreva("Esse programa calcula o lucro e retorna os valores de compra e venda de um produto. \n")
		escreva("Você quer executar o programa? (s ou n) ") 
    leia(fim)
    enquanto (fim != 's' e fim != 'n') { // Validação da resposta para iniciar o programa.
		limpa()
		escreva("Não entendi sua resposta. Você gostaria de executar o programa? (Digite s ou n) ")
		leia(fim)
    		}
	limpa()
        
	enquanto (fim == 's') { // executa o teste enquanto o usuário quiser.
		comercio()
		escreva("Você quer executar o programa novamente? (s ou n)")
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
	
	funcao comercio() { // De acordo com o valor de compra, retorna o preço de venda e o valor de lucro.
		real compra, venda, lucro
		
		escreva("Qual o valor de compra do produto: R$ ") 
		leia(compra)
		limpa()
		
		se (compra < 200) { // Cálculo do valor de venda.
			venda = compra + compra * 0.5
			venda = mat.arredondar(venda, 2)
		} senao  {
			venda = compra + compra * 0.315
			venda = mat.arredondar(venda, 2)
		}
		
		lucro = venda - compra  // Calcula o lucro da transação.
		lucro = mat.arredondar(lucro, 2)

		// RELATORIO FINAL
		escreva("************************************** \n")
		escreva("  O valor de compra foi R$ ", compra, ". \n")
		escreva("-------------------------------------- \n")
		escreva("  O valor de venda foi R$ ", venda, ". \n")
		escreva("-------------------------------------- \n")
		escreva("  O lucro foi R$ ", lucro, ". \n")
		escreva("-------------------------------------- \n")
		escreva("  Parabéns pela venda! \n")
		escreva("************************************** \n")
	}
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 264; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */