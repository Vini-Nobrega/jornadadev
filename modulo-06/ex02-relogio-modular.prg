FUNCTION Main()

    LOCAL cHora := ""
    LOCAL nCont := 0
    
    hb_cdpSelect("PT850")

    FOR nCont := 1 TO 30

        cHora := ObterHora()
        cHora := FormatarHora(cHora)
        ExibirHora(cHora)

        Inkey(1) // espera 1 segundo

    NEXT

RETURN NIL


FUNCTION ObterHora()

    LOCAL cHoraAtual := Time()

RETURN cHoraAtual


FUNCTION FormatarHora(cHora)

    LOCAL cHoraFormatada := ""

    cHora := AllTrim(cHora)

    cHoraFormatada := SubStr(cHora, 1, 2) + ":" + SubStr(cHora, 4, 2) + ":" + SubStr(cHora, 7, 2)

RETURN cHoraFormatada


FUNCTION ExibirHora(cHora)

    QOut("Horário atual: " + cHora)

RETURN NIL