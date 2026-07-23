FUNCTION Main()

    SET PROCEDURE TO matematica.prg
    
    hb_cdpSelect("PT850")

    QOut("Fatorial: " + alltrim(str(FatorialN(10))))
    
    QOut(IIF(EhPrimo(20), "É primo", "Não é primo"))
    
    QOut("MDC: " + alltrim(str(MDC(34, 22))))
    
    QOut("MMC: " + alltrim(str(MMC(77, 49))))

RETURN NIL