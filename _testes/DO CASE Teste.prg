FUNCTION Main()
    LOCAL nSalario := 1200
    LOCAL lTemFilho := .T.
    LOCAL nBeneficio := 0

    nBeneficio := CalcularBeneficio(nSalario, lTemFilho)

    QOut("Beneficio: R$ " + AllTrim(Str(nBeneficio)))

RETURN NIL


FUNCTION CalcularBeneficio(nSalario, lTemFilho)
    LOCAL nBeneficio := 0

    DO CASE

    CASE nSalario <= 1500 .AND. lTemFilho
        nBeneficio := 300

    CASE nSalario <= 1500 .AND. .NOT. lTemFilho
        nBeneficio := 150

    CASE nSalario > 1500 .AND. lTemFilho
        nBeneficio := 100

    OTHERWISE
        nBeneficio := 0

    ENDCASE

RETURN nBeneficio