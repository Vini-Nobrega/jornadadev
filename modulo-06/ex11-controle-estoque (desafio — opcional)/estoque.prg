SET PROCEDURE TO estoque_lib.prg

FUNCTION Main()
    LOCAL aListaProdutos := {}
    LOCAL nMenu := 0
    LOCAL nCodigoBusca := 0
    LOCAL nPosicaoBusca := 0

    hb_cdpSelect("PT850")

    WHILE .T.
        
        nMenu := Menu()
        
        DO CASE

            CASE nMenu == 0
                
                QOut("=======================")
                QOut("Saindo do estoque...")
                QOut("=======================")
                EXIT
        
            CASE nMenu == 1
                QOut("=======================")
                QOut("Entrando em Cadastrar...")
                QOut("=======================")
                Cadastrar(aListaProdutos)


            CASE nMenu == 2
                QOut("=======================")
                QOut("Entrando em Listar...")
                QOut("=======================")
                Listar(aListaProdutos)

            CASE nMenu == 3
                QOut("=======================")
                QOut("Entrando em Entrada...")
                QOut("=======================")
                Entrada(aListaProdutos)

            CASE nMenu == 4              
                QOut("=======================")
                QOut("Entrando em Saída...")
                QOut("=======================")
                Saida(aListaProdutos)

            CASE nMenu == 5
                QOut("Entrando em Buscar...")
                QOut("=======================")

                INPUT "Digite o código do produto que deseja buscar: " TO nCodigoBusca

                nPosicaoBusca := Buscar(aListaProdutos, nCodigoBusca)

                IF nPosicaoBusca > 0

                    QOut("=======================")
                    QOut("Código: " + AllTrim(Str(aListaProdutos[nPosicaoBusca][1])))
                    QOut("Nome: " + AllTrim(aListaProdutos[nPosicaoBusca][2]))
                    QOut("Quantidade: " + AllTrim(Str(aListaProdutos[nPosicaoBusca][3])))
                    QOut("Preço: R$" + AllTrim(Str(aListaProdutos[nPosicaoBusca][4])))
                    QOut("=======================")

                ELSE

                    QOut("Código inexistente.")

                ENDIF

            CASE nMenu == 6
                QOut("=======================")
                QOut("Entrando em Relatório...")
                QOut("=======================")
                Relatorio(aListaProdutos)

        ENDCASE

    ENDDO

RETURN NIL

FUNCTION Menu()
    
    LOCAL aOpcoes := {{1, "Cadastrar"}, {2, "Listar"}, {3, "Entrada"}, {4, "Saída"}, {5, "Buscar"}, {6, "Relatório"}, {0, "Sair"}}
    LOCAL aOpcaoPercorre
    LOCAL nOpcaoEscolhida := 0
    LOCAL nPercorrerOpcoes := 0

    FOR nPercorrerOpcoes := 1 TO Len(aOpcoes)
        
        QOut(Alltrim(str(aOpcoes[nPercorrerOpcoes][1])) + " - " + aOpcoes[nPercorrerOpcoes][2])

    NEXT

    WHILE .T.
        
        QOut("=======================")
        INPUT "Selecione o código de uma opção: " TO nOpcaoEscolhida

        FOR EACH aOpcaoPercorre in aOpcoes
            
            IF nOpcaoEscolhida == aOpcaoPercorre[1]
                
                RETURN nOpcaoEscolhida
                
            ENDIF
        
        NEXT

        QOut("=======================")
        QOut("Opção inválida, por favor, digite apenas o número da opção!")
        QOut("=========================")
    
    ENDDO

RETURN NIL