            #language: pt

            Funcionalidade: Login na plataforma
            Eu como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            para finalizar minha compra

            Cenário: Campos obrigatórios
            Dado que eu acesse detalhes de faturamento
            Quando eu informar "todos os meus dadodos" nos campos marcados com *
            Então minha compra será "processada com sucesso"

            Cenario: E-mail
            Quando eu for cadastrar o meu "e-mail"
            E preencher o campo com a conta "vagner.passos_compra.con"
            Então o sistema deve exbir uma mensagem de alerta "o e-mail deve conter uma conta valida"

            Cenario: Campo obrigatório invalido
            Quando eu informar meus dadodos nos campos marcados com "*"
            E prencher os menos o campo "endereço vazio"
            Então deve exibir uma mensagem de alerta "Todos os campos marcados com * devem ser preenchidos"
            _______________________________________________________________________________

            Esquema do Cenário: 1 Campos obrigatórios
            Quando eu informar <todos os meus dadodos> nos campos marcados com *
            Então minha compra será <processada com sucesso>

            Esquema do Cenário: 2 E-mail
            Quando eu for cadastrar o meu <e-mail>
            E preencher o campo com a conta <vagner.passos_compra.con>
            Então o sistema deve exbir uma mensagem de alerta <o e-mail deve conter uma conta valida>

            Esquema do Cenário: 3 Campo obrigatório invalido
            Quando eu informar meus dadodos nos campos marcados com <*>
            E prencher os menos o campo <endereço vazio>
            Então deve exibir uma mensagem de alerta <Todos os campos marcados com * devem ser preenchidos>


            Exemplos:
            | campo obrigatório       | e-mail                      | condição/mensagem                                      |
            | "todos os meus dadodos" | "vagner.passos@compras.com" | "processada com sucesso"                               |
            | "todos os meus dadodos" | "vagner.passos_compra.con"  | "o e-mail deve conter uma conta valida"                |
            | "endereço vazio"        | "vagner.passos@compras.com" | "Todos os campos marcados com * devem ser preenchidos" |



