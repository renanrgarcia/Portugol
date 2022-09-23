programa
{
	
	/*
	 * Desafio 9: Um comerciante comprou um produto e quer vendê-lo com um lucro de 50% se o 
	 * valor da compra for menor que R$ 200, caso contrário o lucro será de 31,5%. Crie um 
	 * algoritmo que leia o valor da compra e exiba o valor da venda.
	 */

	inclua biblioteca Matematica --> mat
	caracter Iniciar = 's'	
	
	// Objetivo: Retornar o valor de venda e o lucro obtido com base no preço de compra.
	// Entradas: Valor de compra.
	// Saídas: Valores de venda e de lucro.
	funcao inicio(){
		escreva("Esse programa calcula o lucro e retorna os valores de compra e venda de um produto. \n")
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
    					CalcularVenda()
	    			}
			} enquanto (Iniciar != 'n') 
		}
	} 

	// Objetivo: De acordo com o valor de compra, retorna o preço de venda e o valor de lucro.
	// Entradas: Valor de compra.
	// Saídas: Valores de venda e lucro.
	funcao CalcularVenda() { 
		real ValorCompra, ValorVenda, Lucro
		
		escreva("Qual o valor de compra do produto: R$ ") 
		leia(ValorCompra)
		limpa()
		
		se (ValorCompra < 200) { 
			ValorVenda = ValorCompra + ValorCompra * 0.5
			ValorVenda = mat.arredondar(ValorVenda, 2)
		} senao  {
			ValorVenda = ValorCompra + ValorCompra * 0.315
			ValorVenda = mat.arredondar(ValorVenda, 2)
		}
		
		Lucro = ValorVenda - ValorCompra  
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
 * @POSICAO-CURSOR = 331; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */