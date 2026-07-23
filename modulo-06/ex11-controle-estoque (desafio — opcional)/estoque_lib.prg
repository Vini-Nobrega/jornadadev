FUNCTION Cadastrar(aListaProdutos)
    LOCAL aAdiciona, nCodigo, cNome, nQuantidade, nPreco_Unitario
    LOCAL nEncerra := 0
    LOCAL nPercorre := 0
    LOCAL lCodigoExiste := .F.
    LOCAL lNomeExistente := .F.

    //{codigo, nome, quantidade, preco_unitario}

    While .T.

        lCodigoExiste := .F.
        lNomeExistente := .F.

        INPUT "Digite o código do produto: " TO nCodigo
        ACCEPT "Digite o nome do produto: " TO cNome
        INPUT "Digite a quantidade de produtos: " TO nQuantidade
        INPUT "Digite o preço do produto: " TO nPreco_Unitario

        do case
            case nQuantidade <= 0
            
                QOut("Por favor, adicione 1 ou mais produtos.")
                QOut("=======================")

                LOOP // volta para o while
            
            case nCodigo <= 0
                
                QOut("O código precisa ser maior que 0.")
                QOut("=======================")
            
                LOOP // volta para o while

            case nPreco_Unitario <= 0
                QOut("O valor do produto precisa ser maior do que R$ 0")
                QOut("=======================")
            
                LOOP // volta para o while

            case Empty(AllTrim(cNome))
                QOut("O nome do produto não pode ficar vazio.")
                QOut("=======================")
            
                LOOP // volta para o while
        endcase 

        FOR nPercorre := 1 TO Len(aListaProdutos)

            IF nCodigo == aListaProdutos[nPercorre][1]
                lCodigoExiste := .T.
                EXIT
            
            ELSEIF Upper(AllTrim(cNome)) == Upper(AllTrim(aListaProdutos[nPercorre][2]))
                lNomeExistente := .T.
                EXIT

            ENDIF

        NEXT

        IF lCodigoExiste
            QOut("Já existe um produto com esse código!")
            QOut("=======================")

            LOOP // volta para o while

        ELSEIF lNomeExistente
            QOut("Já existe um produto com esse nome!")
            QOut("=======================")
            
            LOOP // volta para o while

        ENDIF

        aAdiciona := {nCodigo, cNome, nQuantidade, nPreco_Unitario}

        AAdd(aListaProdutos, aAdiciona)

        INPUT "Digite 1 para continuar cadastrando e 0 para sair: " TO nEncerra

        While nEncerra <> 1 .AND. nEncerra <> 0

                INPUT "Por favor, digite apenas 1 para continuar ou 0 para sair: " TO nEncerra

        ENDDO

        IF nEncerra == 0

            QOut("=======================")
            QOut("Finalizando cadastro de produtos")
            QOut("=======================")

            EXIT
                 
        ENDIF

        QOut("=======================")
        QOut("Continuando o cadastro de itens...")
        QOut("=======================")

    ENDDO

RETURN aListaProdutos

FUNCTION Listar(aListaProdutos)
    
    LOCAL nListaPercorrer

    IF Len(aListaProdutos) == 0

        QOut("Nenhum produto cadastrado.")

        RETURN NIL

    ENDIF

    FOR nListaPercorrer := 1 TO Len(aListaProdutos)
        
        QOut("=======================")
        QOut("Produto N°" + Alltrim(str(nListaPercorrer)) + " da lista: " +;
            "Código: " + Alltrim(str(aListaProdutos[nListaPercorrer][1])) +;
            " - Nome: " + Alltrim(aListaProdutos[nListaPercorrer][2]) +;
            " - Quantidade: " + Alltrim(str(aListaProdutos[nListaPercorrer][3])) +;
            " - Preço: R$" + Alltrim(str(aListaProdutos[nListaPercorrer][4])))
        QOut("=======================")
        
    NEXT

RETURN NIL

FUNCTION Entrada(aListaProdutos)

    LOCAL nPosicao
    LOCAL nQuantidade
    LOCAL nCodigo

    INPUT "Digite o código do produto que deseja: " TO nCodigo

    nPosicao := Buscar(aListaProdutos, nCodigo)

    IF nPosicao <= 0

        QOut("=======================")
        QOut("Produto não encontrado, retornando ao menu inicial.")
        QOut("=======================")
        
        RETURN NIL

    ENDIF

    INPUT "Digite quantos produtos vai adicionar: " TO nQuantidade
    
    IF nQuantidade > 0

        aListaProdutos[nPosicao][3] += nQuantidade
        
        QOut("=======================")
        QOut("Foram adicionadas: " + Alltrim(str(nQuantidade)) + " unidades do produto selecionado.")
        QOut("=======================")

        QOut("Retornando ao menu inicial...")
        QOut("=======================")

    ELSE

        QOut("Digite um valor maior que 0. Retornando ao menu inicial...")
    
    ENDIF
    
RETURN NIL

FUNCTION Saida(aListaProdutos)

    LOCAL nPosicao
    LOCAL nQuantidade
    LOCAL nCodigo
    LOCAL nVerificaQuantidade
    LOCAL nArmazena

    INPUT "Digite o código do produto que deseja: " TO nCodigo

    nPosicao := Buscar(aListaProdutos, nCodigo)

    IF nPosicao <= 0

        QOut("=======================")
        QOut("Produto não encontrado, retornando ao menu inicial.")
        QOut("=======================")
        
        RETURN NIL

    ENDIF

    INPUT "Digite quantos produtos vai remover: " TO nQuantidade
    
    IF nQuantidade > 0

        nArmazena := aListaProdutos[nPosicao][3]

        nVerificaQuantidade := nArmazena - nQuantidade

        IF nVerificaQuantidade >= 0

            aListaProdutos[nPosicao][3] -= nQuantidade
            
            QOut("=======================")
            QOut("Foram removidos: " + Alltrim(str(nQuantidade)) + " unidades do produto selecionado.")
            QOut("=======================")

            QOut("Retornando ao menu inicial...")
            QOut("=======================")

        ELSE

            QOut("Estoque insuficiente, retornando ao menu.")
        
        ENDIF
    
    ELSE

        QOut("Digite um valor maior que 0. Voltando ao menu inicial...")

    ENDIF

RETURN NIL

FUNCTION Buscar(aListaProdutos, nCodigo)
    
    LOCAL nPosicao

    IF Len(aListaProdutos) == 0

        QOut("Nenhum produto cadastrado.")

        RETURN 0

    ENDIF

    FOR nPosicao := 1 TO Len(aListaProdutos)
    
    IF nCodigo == aListaProdutos[nPosicao][1]

        RETURN nPosicao

    ENDIF

    NEXT

RETURN 0

FUNCTION Relatorio(aListaProdutos)
    
    LOCAL nListaPercorrer
    LOCAL nPosicao
    LOCAL nTotalGeral := 0 
    LOCAL nQtdProdutoEscolhido, nPrecoProdutoEscolhido
    LOCAL nTotalGeralProdutoEscolhido := 0
    LOCAL nCodigoProduto
    LOCAL nEscolha
    LOCAL nValorProduto
    LOCAL cNomeProduto

    IF Len(aListaProdutos) == 0
        
        QOut("Nenhum produto cadastrado. Retornando para o menu...")
        RETURN NIL

    ENDIF

    INPUT "Digite 1 para saber o total específico de um produto ou 2 para o total geral: " TO nEscolha

    IF nEscolha == 1

        INPUT "Digite o produto que deseja verificar o valor em estoque: " TO nCodigoProduto

        nPosicao := Buscar(aListaProdutos, nCodigoProduto)

        IF nPosicao <= 0

            QOut("=======================")
            QOut("Produto não encontrado, retornando ao menu inicial.")
            QOut("=======================")
            
            RETURN NIL

        ENDIF
        
        nQtdProdutoEscolhido := aListaProdutos[nPosicao][3]
        nPrecoProdutoEscolhido := aListaProdutos[nPosicao][4]

        nTotalGeralProdutoEscolhido := nQtdProdutoEscolhido * nPrecoProdutoEscolhido
        
        QOut("=======================")
        QOut("O valor do produto selecionado é de: R$" + Alltrim(str(nTotalGeralProdutoEscolhido,10,2)))
        QOut("=======================")

    ELSEIF nEscolha == 2

        FOR nListaPercorrer := 1 TO Len(aListaProdutos)
            
            cNomeProduto := aListaProdutos[nListaPercorrer][2]
            nValorProduto := aListaProdutos[nListaPercorrer][3] * aListaProdutos[nListaPercorrer][4]
            nTotalGeral += nValorProduto

            QOut("=======================")
            QOut("Valor do produto: "+ cNomeProduto + " é de: R$"+ Alltrim(str(nValorProduto)))
            QOut("=======================")
        
        NEXT

        QOut("=======================")
        QOut("O valor geral dos produtos é de: R$" + Alltrim(str(nTotalGeral,10,2)))
        QOut("=======================")

    ELSE

        QOut("Por favor, digite apenas o número 1 ou 2. Voltando ao menu inicial...")

    ENDIF

RETURN NIL