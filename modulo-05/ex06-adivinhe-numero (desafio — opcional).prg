FUNCTION Main()

    LOCAL nNumeroAleatorio := HB_RandomInt(1, 100)
    LOCAL nTentativas := 0
    LOCAL nNumeroEscolhido := 0

    hb_cdpSelect("PT850")    

    FOR nTentativas := 1 TO 7

        INPUT "Tentativa N° " + AllTrim(str(nTentativas)) + " Digite o número: " TO nNumeroEscolhido
        QOut("==============================")
        
        IF nNumeroAleatorio < nNumeroEscolhido .AND. nTentativas < 7

            QOut( "Dica N° " + AllTrim(str(nTentativas)) + "! O número aleatório é menor do que o número digitado!")
            QOut("==============================")

        ELSEIF nNumeroAleatorio > nNumeroEscolhido .AND. nTentativas < 7

            QOut( "Dica N° " + alltrim(str(nTentativas)) + "! O número aleatório é maior do que o número digitado!")
            QOut("==============================")
        
        ELSE

            EXIT
        
        ENDIF

    NEXT

    IF nNumeroAleatorio == nNumeroEscolhido
        
        QOut("BINGOOOO, acertou! O número aleatório é: " + AllTrim(str(nNumeroAleatorio)))
        QOut("==============================")
    
    ELSE

        QOut("Não foi dessa vez... O número aleatório é: " + AllTrim(str(nNumeroAleatorio)))
        QOut("==============================")

    ENDIF
    
RETURN NIL