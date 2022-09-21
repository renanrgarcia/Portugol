programa
{
	/*
	 * Desafio 2: Crie um algoritmo que leia uma senha fornecida pelo usuário composta por caracteres 
	 * para informar se a senha é válida ou inválida. A senha do sistema corresponde a palavra “SENHA”. 
	 * Obs.: O algoritmo não faz distinção de letras maiúsculas e minúsculas.
	 */

	/* 
	 *  Versão 1.0.1: Erro corrgido - variável Iniciar da função principal era a mesma na função
	 *  EfetuarLogout.
	 */

	funcao inicio(){
	caracter Iniciar
    	
	escreva("Você gostaria de fazer login no sistema? (Digite s ou n) ")
	leia(Iniciar)
	enquanto (Iniciar != 's' e Iniciar != 'n') { // Validação da resposta para iniciar o login.
     	limpa()
     	escreva("Não entendi sua resposta. Você gostaria de fazer login no sistema? (Digite s ou n) ")
     	leia(Iniciar)
	}
	limpa()

	enquanto (Iniciar == 's') {
		EfetuarLogin() //Chama função login.
		EfetuarLogout() //Chama função logout.
		escreva("Você gostaria de fazer login no sistema novamente? (Digite s ou n) ")
		leia(Iniciar)
      	enquanto (Iniciar != 's' e Iniciar != 'n') { // Validação da resposta para iniciar o login.
			limpa()
			escreva("Não entendi sua resposta. Você gostaria de fazer login no sistema novamente? (Digite s ou n) ")
			leia(Iniciar)
      		}	
      	limpa()
		}
	escreva("O sistema foi encerrado. ")
	}
	
	// Objetivo: Função que valida a senha e efetua o login
	funcao EfetuarLogin(){ 
		cadeia Senha
		
		escreva("Digite a senha para logar no Sistema: ")
		leia(Senha)
		Senha = t.caixa_alta(Senha) // Função para retirar a distinção entre maiúsculas e minúsculas.
		limpa()
		
		enquanto (Senha != "SENHA") { // Loop ocorre até a pessoa acertar a senha.
			escreva("Senha incorreta! Digite a senha novamente: ")
			leia(Senha)
			Senha = t.caixa_alta(Senha) 
			limpa()
		}		
		escreva("Login efetuado com sucesso! \n")
	}

	funcao EfetuarLogout() { // Função que efetua o logout.
		caracter Sair
	    
		escreva("Você gostaria de fazer o logout? (s ou n) ")
		leia(Sair)
		enquanto (Sair != 's' e Sair != 'n') { // Validação da resposta para realizar o logout.
			limpa()
			escreva("Não entendi sua resposta. Você gostaria de fazer logout do sistema? (Digite s ou n) ")
			leia(Sair)
			}
		limpa()
	    
		enquanto (Sair != 's') {
			escreva("Você continua logado! \n")
			escreva("Você gostaria de fazer o logout? (s ou n) ")
			enquanto (Sair != 's' e Sair != 'n') { // Validação da resposta para realizar o logout.
				limpa()
				escreva("Não entendi sua resposta. Você gostaria de fazer logout do sistema? (Digite s ou n) ")
				leia(Sair)
	      		}
	      	leia(Sair) 
	      	limpa()
    		}
		escreva("Você foi deslogado! \n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 422; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */