FUNCTION Main()

    LOCAL nN1 := 0
    LOCAL nN2 := 0
    LOCAL cTipoCalculo := ""
    LOCAL nResultado := 0
    LOCAL lMostrarResultado := .T.

    hb_cdpSelect("PT850")

    ACCEPT "Tipo de cálculo que quer fazer (+, -, *, /, ^, R): " TO cTipoCalculo
    
    cTipoCalculo := Upper(AllTrim(cTipoCalculo))

    DO CASE

        CASE cTipoCalculo == "R"

            INPUT "Digite o número que deseja saber a raiz quadrada: " TO nN1

        CASE cTipoCalculo == "^"

            INPUT "Digite o 1° número: " TO nN1
            INPUT "Digite quanto deseja elevar esse número: " TO nN2

        CASE cTipoCalculo == "+" .OR. cTipoCalculo == "-" .OR. cTipoCalculo == "*" .OR. cTipoCalculo == "/"

            INPUT "Digite o 1° número: " TO nN1
            INPUT "Digite o 2° número: " TO nN2

        OTHERWISE
            QOut("Por favor, digite uma opção válida.")
            RETURN NIL
    ENDCASE

    DO CASE
        CASE cTipoCalculo == "+"
            nResultado := nN1 + nN2
        
        CASE cTipoCalculo == "-"
            nResultado := nN1 - nN2

        CASE cTipoCalculo == "*"
            nResultado := nN1 * nN2
        
        CASE cTipoCalculo == "/"
            IF nN2 <> 0
                nResultado := nN1 / nN2
            ELSE
                QOUT("Você não pode dividir um número por 0")
                lMostrarResultado := .F.
            ENDIF

        CASE cTipoCalculo == "^"
            nResultado := nN1 ^ nN2

        CASE cTipoCalculo == "R"

            IF nN1 >= 0
                nResultado := Sqrt(nN1)
            ELSE
                QOut("Não existe raiz de número negativo")
                lMostrarResultado := .F.
            ENDIF
    ENDCASE

    IF lMostrarResultado
        QOut("Resultado da conta: " + Alltrim(str(nResultado, 10, 2)))
    ENDIF
    
RETURN NIL