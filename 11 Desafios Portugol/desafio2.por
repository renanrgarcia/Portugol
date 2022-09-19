programa
{
	inclua biblioteca Texto --> t

	funcao inicio(){
	caracter fim
    	
	escreva("Você gostaria de fazer login no sistema? (Digite s ou n) ")
	leia(fim)
	enquanto (fim != 's' e fim != 'n') { // Validação da resposta para iniciar o login.
     	limpa()
     	escreva("Não entendi sua resposta. Você gostaria de fazer login no sistema? (Digite s ou n) ")
     	leia(fim)
	}
	limpa()

	enquanto (fim == 's') {
		login() //Chama função login.
		logout() //Chama função logout.
		escreva("Você gostaria de fazer login no sistema novamente? (Digite s ou n) ")
		leia(fim)
      	enquanto (fim != 's' e fim != 'n') { // Validação da resposta para iniciar o login.
			limpa()
			escreva("Não entendi sua resposta. Você gostaria de fazer login no sistema novamente? (Digite s ou n) ")
			leia(fim)
      		}	
      	limpa()
		}
	escreva("O sistema foi encerrado. ")
	}

	funcao login(){ // Função que valida a senha e efetua o login.
		cadeia senha
		
		escreva("Digite a senha para logar no Sistema: ")
		leia(senha)
		senha = t.caixa_alta(senha) // Função para retirar a distinção entre maiúsculas e minúsculas.
		limpa()
		
		enquanto (senha != "THAIS") { // Loop ocorre até a pessoa acertar a senha.
			escreva("Senha incorreta! Digite a senha novamente: ")
			leia(senha)
			senha = t.caixa_alta(senha) 
			limpa()
		}		
		escreva("Login efetuado com sucesso! \n")
	}

	funcao logout() { // Função que efetua o logout.
		caracter fim
	    
		escreva("Você gostaria de fazer o logout? (s ou n) ")
		leia(fim)
		enquanto (fim != 's' e fim != 'n') { // Validação da resposta para realizar o logout.
			limpa()
			escreva("Não entendi sua resposta. Você gostaria de fazer logout do sistema? (Digite s ou n) ")
			leia(fim)
			}
		limpa()
	    
		enquanto (fim != 's') {
			escreva("Você continua logado! \n")
			escreva("Você gostaria de fazer o logout? (s ou n) ")
			enquanto (fim != 's' e fim != 'n') { // Validação da resposta para realizar o logout.
				limpa()
				escreva("Não entendi sua resposta. Você gostaria de fazer logout do sistema? (Digite s ou n) ")
				leia(fim)
	      		}
	      	leia(fim)
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
 * @POSICAO-CURSOR = 1371; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */