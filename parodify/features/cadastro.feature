#language: pt

Funcionalidade: Cadastro de usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenário: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | jolncole@hotmail.com |
            | senha          | 0557ab               |
            | senha_confirma | 0557ab               |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de cadastro

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <confirma_senha> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email                | senha  | confirma_senha | mensagem_saida                       |
            |                      | 0557ab | 0557ab         | Oops! Informe seu email.             |
            | jolncole@hotmail.com |        |                | Oops! Informe sua senha.             |
            | jolncole@hotmail.com | 0557ab | 0557aa         | Oops! Senhas não são iguais.         |
            |                      |        |                | Oops! Informe seu email e sua senha. |


    Cenário: Validacão do campo email
        Quando acesso a página de cadastro
        Então deve exibir o seguinte css: "input[type=email]"
        


