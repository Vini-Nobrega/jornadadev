FUNCTION Main()

    LOCAL nSalario := 0
    LOCAL nNovoSalario := 0
    LOCAL nReajuste := 0
    LOCAL nPercentual := 0

    hb_cdpSelect("PT850")

    INPUT "Digite seu salario: " TO nSalario

    IF nSalario <= 0
        QOut("Salario invalido.")

    ELSEIF nSalario < 1000
        nPercentual := 0.15

    ELSEIF nSalario <= 2000
    nPercentual := 0.12

    ELSEIF nSalario <= 4000
        nPercentual := 0.08

    ELSE
        nPercentual := 0.05

    ENDIF

    IF nSalario > 0

        nReajuste := nSalario * nPercentual
        nNovoSalario := nSalario + nReajuste

        QOut("Valor do reajuste: R$ " + AllTrim(Str(nReajuste, 10, 2)))

        QOut("Novo salario: R$ " + AllTrim(Str(nNovoSalario, 10, 2)))

    ENDIF

RETURN NIL