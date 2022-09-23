programa
{
	/*
	 * Desafio 2: Crie um algoritmo que leia uma senha fornecida pelo usuário composta por caracteres 
	 * para informar se a senha é válida ou inválida. A senha do sistema corresponde a palavra “SENHA”. 
	 * Obs.: O algoritmo não faz distinção de letras maiúsculas e minúsculas.
	 */

	// Erro corrigido - variável Iniciar da função principal era a mesma na função EfetuarLogout.

	inclua biblioteca Texto --> t
	caracter Iniciar = 's'

	// Objetivo: Efetuar o login e o logout do sistema. 
	// Entradas: Número real e resposta caracter.
	// Saídas: Texto informando a relação entre o número informado e 500.
	funcao inicio(){
		enquanto (Iniciar == 's') {
			faca {
				escreva("Você gostaria de fazer login no sistema? (s ou n) ") 
	    			leia(Iniciar)
	    			ValidarSimOuNao() 
	    			limpa()
	    			se (Iniciar != 's' e Iniciar != 'n') { 
	    				CorrigirResposta() 
	    			}
	    			se (Iniciar == 'n') {
					escreva("Obrigado por utilizar esse programa!")
	    			} senao se (Iniciar == 's'){
	    				EfetuarLogin()
	    				EfetuarLogout()
	    			}
			} enquanto (Iniciar != 'n') 
		}
	} 

    	// Objetivo: Validar a senha e efetuar o login.
    	// Entradas: Senha. 
    	// Saídas: Mensagem de login efetuado.
	funcao EfetuarLogin(){ 
		cadeia Senha
		
		escreva("Digite a senha para logar no Sistema: ")
		leia(Senha)
		Senha = t.caixa_alta(Senha) // Função para retirar a distinção entre maiúsculas e minúsculas.
		limpa()
		
		enquanto (Senha != "SENHA") {
			escreva("Senha incorreta! Digite a senha novamente: ")
			leia(Senha)
			Senha = t.caixa_alta(Senha) 
			limpa()
		}		
		escreva("Login efetuado com sucesso! \n")
	}

    	// Objetivo: Efetuar o logout.
    	// Entradas: Senha. 
    	// Saídas: Mensagem de login efetuado.
	funcao EfetuarLogout() { 
		caracter Sair = 'n'
		
		enquanto (Sair != 's') {
			escreva("Você gostaria de fazer o logout? (s ou n) ")
			leia(Sair)
	    		ValidarSimOuNao() 
	    		limpa()
	    		se (Sair != 's' e Sair != 'n') { 
	    			CorrigirResposta() 
	    		}
	    		se (Sair == 'n') {
				escreva("Você continua logado! \n")
	    		} senao se (Sair == 's'){
				escreva("Você foi deslogado com segurança! \n")
	    		}
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
 * @POSICAO-CURSOR = 888; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */