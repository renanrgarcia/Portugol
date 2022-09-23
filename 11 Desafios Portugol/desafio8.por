programa
{
	
	/*
	 * Desafio 8: Crie um algoritmo que após receber o Salário Bruto, calcule o salário líquido 
	 * descontando 25% quando o salário bruto for menor que R$ 2000, caso contrário descontar 35%. 
	 * No final, exiba o salário líquido.
	 */

	inclua biblioteca Matematica --> mat
	caracter Iniciar = 's'

	// Objetivo: Calcular o salário líquido com desconto dependendo do salário bruto informado.
	// Entradas: Salário bruto.
	// Saídas: Salário líquido e valor do desconto.
	funcao inicio(){
		escreva("Esse programa calcula o salário líquido após o desconto necessário. \n")
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
	    				CalcularSalarioLiquido()
	    			}
			} enquanto (Iniciar != 'n') 
		}
	} 

	// Objetivo: Calcular o salário líquido com desconto dependendo do salário bruto informado.
	// Entradas: Salário bruto.
	// Saídas: Salário líquido e valor do desconto.
	funcao CalcularSalarioLiquido() { 
		real SalarioBruto, SalarioLiquido
		
		escreva("Digite o salário bruto: R$ ") 
		leia(SalarioBruto)
		
		se (SalarioBruto < 2000) { // Aplicação do desconto dependendo do valor bruto recebido.
			SalarioLiquido = SalarioBruto - SalarioBruto * 0.25
			SalarioLiquido = mat.arredondar(SalarioLiquido, 2)
			escreva("O salário líquido é R$ ", SalarioLiquido, ". O desconto foi de 25%. \n")
		} senao  {
			SalarioLiquido = SalarioBruto - SalarioBruto * 0.35
			SalarioLiquido = mat.arredondar(SalarioLiquido, 2)
			escreva("O número digitado é R$ ", SalarioLiquido, ". O desconto foi de 35%. \n")
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
 * @POSICAO-CURSOR = 314; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */