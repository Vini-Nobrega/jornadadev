FUNCTION Main()

    LOCAL nN1 := 0
    LOCAL nN2 := 0

    hb_cdpSelect("PT850")

    INPUT("Digite o primeiro número: ") TO nN1
    INPUT("Digite o segundo número: ") TO nN2
    
    IF nN1 == nN2
        QOut("Os números sao iguais")
        QOut("Número 1: " + AllTrim(Str(nN1)))
        QOut("Número 2: " + AllTrim(Str(nN2)))

    ELSEIF nN1 > nN2
        QOut("O número 1 é o maior: " + Alltrim(str(nN1)))
        QOut("O número 2 é o menor: " + Alltrim(str(nN2)))
    
    ELSE
        QOut("O número 2 é o maior: " + Alltrim(str(nN2)))
        QOut("O número 1 é o menor: " + Alltrim(str(nN1)))

    ENDIF

RETURN NIL