FUNCTION Main()
    
    LOCAL nTotal := 0
    LOCAL nTotalAcumulado := 0
    LOCAL nQtd := 0

    hb_cdpSelect("PT850")

    WHILE .T.
        
        INPUT "Digite um número: " TO nTotal

        nTotalAcumulado := nTotal + nTotalAcumulado

        IF nTotal == 0
            
            QOut("Número 0 digitado, finalizando operação.")
            EXIT
        ENDIF

        nQtd++
        
    ENDDO

    QOut("Soma total dos valores: " + Alltrim(str(nTotalAcumulado)))
    QOut("A quantidade de valores somados foi de: " + Alltrim(str(nQtd)))
    
RETURN NIL