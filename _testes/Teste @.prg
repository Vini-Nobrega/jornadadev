FUNCTION Main()

    LOCAL nNumero1 := 10
    LOCAL nNumero2 := 10

    hb_cdpSelect("PT850")

    QOut("Valores antes:")
    QOut("nNumero1: " + str(nNumero1))
    QOut("nNumero2: " + str(nNumero2))

    AlterarSemReferencia(nNumero1)
    AlterarComReferencia(@nNumero2)

    QOut("Valores depois:")
    QOut("nNumero1: " + str(nNumero1))
    QOut("nNumero2: " + str(nNumero2))

RETURN NIL


FUNCTION AlterarSemReferencia(nValor)

    nValor := 50
    QOut("Dentro de AlterarSemReferencia:", nValor)

RETURN NIL


FUNCTION AlterarComReferencia(nValor)

    nValor := 50
    QOut("Dentro de AlterarComReferencia:", nValor)

RETURN NIL