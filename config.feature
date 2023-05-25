            #language: pt

            Funcionalidade: Tela de produtos
            Eu como cliente EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade para depois inserir no carrinho

            Cenario: Comprar
            Dado que eu acesse a pagina de produtos EBAC-SHOP
            Quando eu clicar nas opções de cor e tamanho
            E não selecionar a "quantidade"
            E clicar no botão "comprar"
            Então o Sistema deve informar uma mensagem de alerta "selecione a quantidade"

            Cenario: Quantidade invalida
            Quando eu clicar nas opções de cor e tamanho
            E selecionar mais de "11" produtos
            E clicar no botão "comprar"
            Então o sistema deve informar uma mensagem de alerta "Só é permitido 10 produtos por compra"

            Cenario: Limpar opções
            Quando eu clicar nas opções de "cor", "tamanho" e "quantidade"
            E clicar em "limpar"
            Então o produto deve voltar ao seu "estado original"
            _______________________________________________________________________________________________________________

            Esquema do Cenário: 1 Compra falha
            Quando não selecionar <quantidade>
            E clicar em <comprar>
            Então o Sistema deve informar uma mensagem de alerta <selecione a quantidade>

            Esquema do Cenário: 2 Quantidade invalida
            Quando eu selecionar <11> produtos
            E clicar em <comprar>
            Então o sistema deve informar uma mensagem de alerta <Só é permitido 10 produtos por compra>

            Esquema do Cenário: 3 Tela de produtos
            Quando eu clicar nas opções de <cor>, <tamanho> e <quantidade>
            Então o produto deve <voltar para seu estado original>

            Exemplos:
            | selecionar cor | selecionar tamanho | selecionar quantidade | clicar em | condição/mensagem                       |
            | "cor"          | "tamanho"          | "0"                   | "comprar" | "selecione a quantidade"                |
            | "cor"          | "tamanho"          | "11"                  | "comprar" | "Só é permitido 10 produtos por compra" |
            | "cor"          | "tamanho"          | "2"                   | "limpar"  | "voltar para seu estado original"       |


