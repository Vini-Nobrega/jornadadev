FUNCTION Main()

    LOCAL nNumeroDaSemana := 0
    LOCAL aDiasSemana := {"Segunda-Feira","Terça-Feira","Quarta-Feira","Quinta-Feira","Sexta-Feira","Sábado","Domingo"}

    INPUT "Digite o dia da semana que você quer saber (1 à 7): " TO nNumeroDaSemana

    WHILE nNumeroDaSemana < 1 .OR. nNumeroDaSemana > 7
        
        INPUT "Digite o número do dia da semana no intervalo de 1 à 7: " TO nNumeroDaSemana
    
    ENDDO

    QOut("O número: " + Alltrim(str(nNumeroDaSemana)) + " Representa: " + aDiasSemana[nNumeroDaSemana])

RETURN NIL