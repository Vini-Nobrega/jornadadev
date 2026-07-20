FUNCTION Main()
    LOCAL nNumero := 0
    LOCAL nDobro := 0

    hb_cdpSelect("PT850")

    WHILE .T.
        
        INPUT "Digite um número: " TO nNumero

        IF nNumero <= 0
            QOut("Número abaixo de 1 identificado, saindo do fluxo")
            
            EXIT
        
        ENDIF

        nDobro := nNumero * 2
        
        QOut("Número multiplicado, novo valor: " + Alltrim(str(nDobro)))
    
    ENDDO

RETURN NIL