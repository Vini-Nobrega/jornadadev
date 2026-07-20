FUNCTION Main()
    
    LOCAL cNome := ""
    LOCAL cDisciplina := "" 
    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nMedia := 0
    LOCAL cContinua := ""
    
    hb_cdpSelect("PT850")

    While .T.
        
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
        QOut("========================================")

        While .T.

            ACCEPT "Deseja calcular outro? (S/N) " TO cContinua

            // preferi deixar só para verificar se é s ou n, ai eu trato de deixar maiúcula, porque é desnecessário pedir para digitar novamente se colocar só "s" ou "n" minúsculo.

            IF AllTrim(Upper(cContinua)) == "S"
            
                QOut("Iniciando processo para calcular nova média...")
                QOut("========================================")
                EXIT
            
            ELSEIF AllTrim(Upper(cContinua)) == "N"

                EXIT

            ENDIF

        ENDDO
    
    IF AllTrim(Upper(cContinua)) == "N"
        
        QOut("Finalizando processo...")

        EXIT

    ENDIF
    
    ENDDO

RETURN NIL