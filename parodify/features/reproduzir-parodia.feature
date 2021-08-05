#language: pt

Funcionalidade: Reproduzir Paródia
    sendo um usuário cadastrado
    Quero reproduzir musicas no player do Parodify
    Para que eu possa ouvir as paródias das bandas favoritas

    Contexto: Login
        * Login com "leon@uol.com.br" e "0557ab"

    Cenário: ouvir paródia

        Dado que eu gosto muito de "Rock"
        Quando toco a seguinte canção:
            | paródia | Sprints de Luta Sprints de Gloria |
            | banda   | Charlie Brown Bug                 |
        Então essa paródia deve ficar em modo de reprodução

        Dado que eu gosto muito de "Rock"
        Quando toco a seguinte canção:
            | paródia | Windows My Ass |
            | banda   | NullVana       |
        Então essa paródia deve ficar em modo de reprodução

        Dado que eu gosto muito de "Rock"
        Quando toco a seguinte canção:
            | paródia | TIndios          |
            | banda   | Automação Urbana |
        Então essa paródia deve ficar em modo de reprodução

        Dado que eu gosto muito de "Rock"
        Quando toco a seguinte canção:
            | paródia | CSS Style |
            | banda   | QA/DC     |
        Então essa paródia deve ficar em modo de reprodução

   
