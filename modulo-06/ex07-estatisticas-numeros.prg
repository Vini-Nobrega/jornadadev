FUNCTION Main()
    LOCAL aLista, nSoma, nMedia

    
    hb_cdpSelect("PT850")
    
    aLista := AdicionarNumLista()
    
    nSoma := Soma(aLista)
    QOut("A soma é de: " + alltrim(str(nSoma)))

    nMedia := CalculaMedia(nSoma)
    QOut("====================")
    QOut("A média é de: " + alltrim(str(nMedia)))

    MaiorMenor(aLista)

RETURN NIL

FUNCTION AdicionarNumLista()

    LOCAL aLista := {}
    LOCAL nNumero := 0
    LOCAL nValorInput := 0

    FOR nNumero := 1 TO 10 
    
        INPUT "Digite o " + alltrim(str(nNumero)) + "° número: " TO nValorInput

        AAdd(aLista, nValorInput)

    NEXT

    QOut("====================")
    QOut("Números em ordem crescente:")

    ASort(aLista)

    FOR nNumero := 1 TO Len(aLista)

        QOut(AllTrim(Str(aLista[nNumero])))

    NEXT

    QOut("====================")

RETURN aLista

Function Soma(aLista)

    LOCAL nSoma := 0
    LOCAL nPercorre := 0
    
    FOR nPercorre := 1 TO Len(aLista)

        nSoma := nSoma + aLista[nPercorre]
    
    NEXT

RETURN nSoma

Function CalculaMedia(nSoma)

    LOCAL nMedia := 0

    nMedia := nSoma / 10

RETURN nMedia

FUNCTION MaiorMenor(aLista)

    LOCAL nMaior, nMenor

    nMenor := aLista[1]
    nMaior := aLista[10]

    QOut("====================")
    QOut("O menor número é: " + AllTrim(Str(nMenor)))
    QOut("====================")
    QOut("O maior número é: " + AllTrim(Str(nMaior)))

RETURN NIL