FUNCTION Main()

    LOCAL aVetor := {}
    LOCAL nNumero := 0
    LOCAL nPercorrer := 0

    hb_cdpSelect("PT850")

    FOR nPercorrer := 1 TO 10

        INPUT "Digite o " + AllTrim(Str(nPercorrer)) + "° número: " TO nNumero

        AAdd(aVetor, nNumero)

    NEXT

    QOut("=========================")
    QOut("Vetor antes da ordenação:")

    ExibirVetor(aVetor)

    BubbleSort(aVetor)

    QOut("=========================")
    QOut("Vetor depois da ordenação:")

    ExibirVetor(aVetor)

RETURN NIL


FUNCTION BubbleSort(aVetor)

    LOCAL nPassada := 0
    LOCAL nPosicao := 0
    LOCAL nTemporario := 0

    FOR nPassada := 1 TO Len(aVetor) - 1

        FOR nPosicao := 1 TO Len(aVetor) - nPassada

            IF aVetor[nPosicao] > aVetor[nPosicao + 1]

                nTemporario := aVetor[nPosicao]

                aVetor[nPosicao] := aVetor[nPosicao + 1]

                aVetor[nPosicao + 1] := nTemporario

            ENDIF

        NEXT

    NEXT

RETURN aVetor


FUNCTION ExibirVetor(aVetor)

    LOCAL nPercorrer := 0
    LOCAL cResultado := ""

    FOR nPercorrer := 1 TO Len(aVetor)

        cResultado := cResultado + AllTrim(Str(aVetor[nPercorrer]))

        IF nPercorrer < Len(aVetor)

            cResultado := cResultado + ", "

        ENDIF

    NEXT

    QOut(cResultado)

RETURN NIL