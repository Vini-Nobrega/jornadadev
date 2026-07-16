FUNCTION Main()

    LOCAL cNomeAluno := ""
    LOCAL cNota1 := ""
    LOCAL nNota1 := 0
    LOCAL cNota2 := ""
    LOCAL nNota2 := 0
    LOCAL cNota3 := ""
    LOCAL nNota3 := 0
    LOCAL cNota4 := ""
    LOCAL nNota4 := 0
    LOCAL nMediaPonderada := 0

    ACCEPT "Digite o nome do aluno: " TO cNomeAluno
    ACCEPT "Digite a nota 1: " to cNota1
    ACCEPT "Digite a nota 2: " to cNota2
    ACCEPT "Digite a nota 3: " to cNota3
    ACCEPT "Digite a nota 4: " to cNota4

    nNota1 := Val(cNota1)
    nNota2 := Val(cNota2)
    nNota3 := Val(cNota3)
    nNota4 := Val(cNota4)

    nMediaPonderada := (nNota1 * 1 + nNota2 * 2 + nNota3 * 3 + nNota4 * 4) / (1 + 2 + 3 + 4)

    QOut("A média ponderada do Aluno: " + cNomeAluno + "de: " + Alltrim(str(nMediaPonderada, 10, 2)))

RETURN NIL