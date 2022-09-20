programa
{
	
	/*
	 * Desafio 8: Crie um algoritmo que após receber o Salário Bruto, calcule o salário líquido 
	 * descontando 25% quando o salário bruto for menor que R$ 2000, caso contrário descontar 35%. 
	 * No final, exiba o salário líquido.
	 */
	
	inclua biblioteca Matematica --> mat
	
	funcao inicio(){
		caracter Iniciar
		
		escreva("Esse programa calcula o salário líquido após o desconto necessário. \n")
		escreva("Você quer executar o programa? (s ou n) ") 
	leia(Iniciar)
	enquanto (Iniciar != 's' e Iniciar != 'n') { // Validação da resposta para iniciar o programa.
		limpa()
		escreva("Não entendi sua resposta. Você gostaria de executar o programa? (Digite s ou n) ")
		leia(Iniciar)
    		}
    	limpa()
        
    	enquanto (Iniciar == 's') { // executa o teste enquanto o usuário quiser.
		CalcularDescontos()
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
	
	funcao CalcularDescontos() { // Recebe o salário bruto e faz o desconto correpondente ao montante informado.
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
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1939; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */