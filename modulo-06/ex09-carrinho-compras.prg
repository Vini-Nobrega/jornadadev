FUNCTION Main()
    LOCAL aCarrinho := {}

aCarrinho := AdicionarItens()
Soma(aCarrinho)

RETURN NIL


FUNCTION AdicionarItens()

    LOCAL aListaProdutos := {{"Arroz", 25.90},;
        {"Feijão", 8.50},;
        {"Macarrão", 6.20},;
        {"Leite", 5.80},;
        {"Café", 18.90},;
        {"Açúcar", 4.70},;
        {"Óleo", 7.90},;
        {"Farinha", 6.50},;
        {"Biscoito", 3.80},;
        {"Refrigerante", 9.50}}

    LOCAL aCarrinho := {}
    LOCAL nPercorrer := 0
    LOCAL nOpcao := 0
    LOCAL cNomeProdutoDesejado := ""
    LOCAL aProdutos := {}
    LOCAL nPercorrerCarrinho := 0
    
    hb_cdpSelect("PT850")

    While .T.

        INPUT "Digite 1 para comprar ou 0 para sair: " TO nOpcao
        
        IF nOpcao == 1

            QOut("=========================")
            QOut("Produtos Disponíveis:")
            QOut("=========================")

            FOR nPercorrer := 1 TO Len(aListaProdutos)
                
                QOut(AllTrim(Str(nPercorrer)) + " - " + aListaProdutos[nPercorrer][1] + " - R$ " + AllTrim(Str(aListaProdutos[nPercorrer][2], 10, 2)))

            NEXT
            
            QOut("=========================")

            ACCEPT "Digite o nome do produto que deseja comprar: " TO cNomeProdutoDesejado

            FOR EACH aProdutos IN aListaProdutos

                IF Upper(AllTrim(cNomeProdutoDesejado)) == Upper(aProdutos[1])
                    
                    AAdd(aCarrinho, aProdutos)
                    QOut("Produto adicionado ao carrinho: " + aProdutos[1])

                ENDIF

            NEXT

            QOut("=========================")
        
        ELSEIF nOpcao == 0

            QOut("=========================")
            QOut("Compra finalizada, segue seu carrinho: ")

            FOR nPercorrerCarrinho := 1 TO Len(aCarrinho)

                QOut(aCarrinho[nPercorrerCarrinho][1] + " R$" + alltrim(str(aCarrinho[nPercorrerCarrinho][2])))

            NEXT

            RETURN aCarrinho

        ELSE

            QOut("Opção inválida!")
            QOut("=========================")
    
        ENDIF

    ENDDO

RETURN aCarrinho


FUNCTION Soma(aCarrinho)

    LOCAL nSoma := 0
    LOCAL nPercorrer := 0

    FOR nPercorrer := 1 TO Len(aCarrinho)

        nSoma := nSoma + aCarrinho[nPercorrer][2]
        
    NEXT

    QOut("=========================")
    QOut("O valor total do carrinho é de: R$ " + AllTrim(Str(nSoma, 10, 2)))

RETURN nSoma