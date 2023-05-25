  #language: pt

            Funcionalidade: Login na plataforma
            Eu como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            para visualizar meus pedidos

            Cenário: Login valido
            Dado que eu acesse a pagina de produtos EBAC-SHOP
            Quando Eu informar meu usuario "vagner.passos"
            E colocar minha senha "vagner123"
            Então deve abrir a tela "checkout"

            Cenario: Ligin invalido
            Quando eu informar meu usuario "vagner@passos"
            E colocar minha senha "vagner123"
            Então deve exibir uma mensagem de alerta "Usuario ou senha invalido"

            Cenario: Senha errada
            Quando eu informar meu usuario "vagner.passos"
            E colocar minha senha "vagner@123"
            Então deve exibir uma mensagem de alerta "Usuario ou senha invalido"
            _______________________________________________________________________________

            Esquema do Cenário: 1 Login valido
            Quando eu informar meu usuario <vagner.passos>
            E a senha <vagner123>
            Então deve abrir a tela <checkout>

            Esquema do Cenário: 2 Login invalido
            Quando eu informar meu usuario <vagner@passos>
            E colocar minha senha <vagner123>
            Então deve exibir uma mensagem de alerta <Usuario ou senha invalido>

            Esquema do Cenário: 3 Senha errada
            Quando eu informar meu usuario <vagner.passos>
            E colocar minha senha <agner@123>
            Então deve exibir uma mensagem de alerta >Usuario ou senha invalido>


            Exemplos:
            | login           | senha        | condição/mensagem           |
            | "vagner.passos" | "vagner123"  | "checkout"                  |
            | "vagner@passos" | "vagner123"  | "Usuario ou senha invalido" |  
            | "vagner.passos" | "vagner@123" | "Usuario ou senha invalido" |



