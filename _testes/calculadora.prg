FUNCTION Main()
    LOCAL nA := 0
    LOCAL nB := 0

    ACCEPT "Digite um número: " TO nA

    ACCEPT "Digite o segundo número: " TO nB
    
    nA := Val(nA)
    nB := Val(nB)
     

    QOut("A soma é igual à: " + AllTrim(Str(nA + nB, 10, 2 )))
    QOut("A subtracao é igual à: " + AllTrim(Str(nA - nB, 10, 2)))
    QOut("A multiplicação é igual à: " + AllTrim(Str(nA * nB, 10, 2)))

    // Sobre o (... , 10, 2)
    // 10 = largura total da string, incluindo sinal, ponto, casas decimais e espaços
    // Se o valor não couber na largura, Str() retorna asteriscos, ai, tem que aumentar o espaço reservado
    // 2  = quantidade de casas decimais

    IF nB <> 0 // "<>" -> "!="
        QOut("A divisão é igual à: " + AllTrim(Str(nA / nB, 10, 2)))

    ELSE
        QOut("Você não pode dividir um número por 0")
    ENDIF

RETURN NIL
