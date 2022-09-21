programa
{
	
	/*
	 * Desafio 9: Um comerciante comprou um produto e quer vendê-lo com um lucro de 50% se o 
	 * valor da compra for menor que R$ 200, caso contrário o lucro será de 31,5%. Crie um 
	 * algoritmo que leia o valor da compra e exiba o valor da venda.
	 */
		
	funcao inicio(){
		caracter Iniciar
		
		escreva("Esse programa calcula o lucro e retorna os valores de compra e venda de um produto. \n")
		escreva("Você quer executar o programa? (s ou n) ") 
    leia(Iniciar)
    enquanto (Iniciar != 's' e Iniciar != 'n') { // Validação da resposta para iniciar o programa.
		limpa()
		escreva("Não entendi sua resposta. Você gostaria de executar o programa? (Digite s ou n) ")
		leia(Iniciar)
    		}
	limpa()
        
	enquanto (Iniciar == 's') { // executa o teste enquanto o usuário quiser.
		CalcularVenda()
		escreva("Você quer executar o programa novamente? (s ou n)")
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
	
	funcao CalcularVenda() { // De acordo com o valor de compra, retorna o preço de venda e o valor de lucro.
		real ValorCompra, ValorVenda, Lucro
		
		escreva("Qual o valor de compra do produto: R$ ") 
		leia(ValorCompra)
		limpa()
		
		se (ValorCompra < 200) { // Cálculo do valor de venda.
			ValorVenda = ValorCompra + ValorCompra * 0.5
			ValorVenda = mat.arredondar(ValorVenda, 2)
		} senao  {
			ValorVenda = ValorCompra + ValorCompra * 0.315
			ValorVenda = mat.arredondar(ValorVenda, 2)
		}
		
		Lucro = ValorVenda - ValorCompra  // Calcula o lucro da transação.
		Lucro = mat.arredondar(Lucro, 2)

		// RELATORIO FINAL
		escreva("************************************** \n")
		escreva("  O valor de compra foi R$ ", ValorCompra, ". \n")
		escreva("-------------------------------------- \n")
		escreva("  O valor de venda foi R$ ", ValorVenda, ". \n")
		escreva("-------------------------------------- \n")
		escreva("  O lucro foi R$ ", Lucro, ". \n")
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
 * @POSICAO-CURSOR = 2324; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */