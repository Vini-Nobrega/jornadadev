FUNCTION Main()
    
    LOCAL cNome := ""
    LOCAL cDisciplina := "" 
    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nMedia := 0
    
    hb_cdpSelect("PT850")

    While .T. 
        
        ACCEPT "Digite seu nome: " TO cNome

        IF Len(AllTrim(cNome)) > 0

            EXIT

        ENDIF

    ENDDO

    While .T. 
        
        ACCEPT "Digite a Disciplina (MAT, POR...): " TO cDisciplina

        IF Len(AllTrim(cDisciplina)) == 3 .AND. AllTrim(cDisciplina) == Upper(AllTrim(cDisciplina))

            EXIT

        ENDIF

    ENDDO

    While .T.
        
        INPUT "Digite a 1° Nota: " TO nNota1

        IF nNota1 >= 0 .AND. nNota1 <= 10
            
            EXIT
        
        ENDIF
    
    ENDDO
        
    While .T.
        
        INPUT "Digite a 2° Nota: " TO nNota2

        IF nNota2 >= 0 .AND. nNota2 <= 10
            
            EXIT
        
        ENDIF
    
    ENDDO

    nMedia := (nNota1 + nNota2) / 2

    QOut("========================================")
    QOut("Nome: " + AllTrim(cNome))
    QOut("Disciplina: " + AllTrim(cDisciplina))
    QOut("Nota 1: " + AllTrim(Str(nNota1, 5, 2)))
    QOut("Nota 2: " + AllTrim(Str(nNota2, 5, 2)))
    QOut("Média: " + AllTrim(Str(nMedia, 5, 2)))

RETURN NIL