FUNCTION Main()
    
    LOCAL aLista := {}

    aLista := AdicionarAlunos()
    CalcularMedia(aLista)

RETURN NIL


FUNCTION AdicionarAlunos()

    LOCAL aLista := {}
    LOCAL aInfosAluno := {}
    LOCAL nQuantidade := 0
    LOCAL nPercorrerNome := 0
    LOCAL nPercorrerNota := 0
    LOCAL nNota := 0
    LOCAL cNome := ""

    hb_cdpSelect("PT850")

    INPUT "Quantos alunos deseja registrar? " TO nQuantidade

    FOR nPercorrerNome := 1 TO nQuantidade

        aInfosAluno := {}

        ACCEPT "Digite o nome do " + AllTrim(Str(nPercorrerNome)) + "° aluno: " TO cNome

        AAdd(aInfosAluno, cNome)

        FOR nPercorrerNota := 1 TO 4

            INPUT "Digite a " + AllTrim(Str(nPercorrerNota)) + "° nota do aluno: " TO nNota

            AAdd(aInfosAluno, nNota)

        NEXT

        AAdd(aLista, aInfosAluno)

    NEXT

RETURN aLista


FUNCTION CalcularMedia(aLista)

    LOCAL nPercorrer := 0
    LOCAL nMedia := 0

    FOR nPercorrer := 1 TO Len(aLista)
        
        nMedia := (aLista[nPercorrer][2] + aLista[nPercorrer][3] + aLista[nPercorrer][4] + aLista[nPercorrer][5]) / 4 

        IF nMedia < 7
            QOut("O aluno: " + aLista[nPercorrer][1] + " Fechou com a média: " + Alltrim(str(nMedia)) + " Portanto, foi Reprovado!")
        
        ELSE
            QOut("O aluno: " + aLista[nPercorrer][1] + " Fechou com a média: " + Alltrim(str(nMedia)) + " Portanto, foi Aprovado!")
        
        ENDIF

    NEXT

RETURN NIL