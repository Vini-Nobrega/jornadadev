FUNCTION Main()
    LOCAL nNumero := 0
    LOCAL nNumeroCinquenta := 0
    LOCAL nNumeroDecrescente := 0

    hb_cdpSelect("PT850")
    
    // A-) Imprime de 1 até 100
    FOR nNumero := 1 TO 100
        
        QOut("nNumero : " + Alltrim(str(nNumero)))
    
    NEXT


    // B-) Imprima os números de -50 a 50

    FOR nNumeroCinquenta := -50 TO 50
        
        QOut("nNumeroCinquenta: " + Alltrim(str(nNumeroCinquenta)))
    
    NEXT
    
    // C-) Imprima os números de 80 a 5 em ordem decrescente

    FOR nNumeroDecrescente := 80 TO 5 STEP -1
        
        QOut("nNumeroDecrescente: " + Alltrim(str(nNumeroDecrescente)))

    NEXT

RETURN NIL