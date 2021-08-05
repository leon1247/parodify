#language: pt

Funcionalidade: Login
    sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    para que eu possa ter acesso as playlists do Parodify
   
    @smoke
    Cenário: Login do usuário

        Dado que acesso a página Login
        Quando submeto minhas credenciais com: "leon@uol.com.br" e "0557ab"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Login

        Dado que acesso a página Login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email           | senha  |
            | leon@404.com.br | abc123 |
            |                 |        |
            | leon@uol.com.br |        |
            |                 | abc123 |
