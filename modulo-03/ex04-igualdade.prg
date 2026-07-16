FUNCTION Main()

    LOCAL cHarb := "Harb"
    LOCAL cHarbour := "Harbour"

    QOut(cHarbour = cHarb)   // Com =, compara de forma não exata. Como "Harbour" tem forma a palavra "Harb", a comparação retorna True 

    QOut(cHarbour == cHarb)  // Com ==, compara de forma exata. Como "Harbour" e "Harb"não são exatamente iguais, retorna False

RETURN NIL