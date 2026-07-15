//ficha de apresentação
//Nome: Vinícius
//Cidade: Guarulhos
//Curso: Harbour / ADVPL

FUNCTION Main()
    LOCAL cNome := "Vinícius"
    LOCAL cCidade := "Guarulhos"
    LOCAL cCurso := "Harbour / ADVPL"
    LOCAL cIgual := "============================"
    LOCAL dData_de_hoje := Date() // o Date() pega o dia de hoje
    LOCAL cHora := Time() // o Time() pega o horário e já converte para String

    hb_cdpSelect("PT850") // Para corrigir o erro na acentuação (mais especificamente o do "~")
    SET DATE FORMAT TO "DD/MM/YYYY" // Isso aqui faz com que a data seja formatada no formado DD/MM/YYYY, e não o padrão, que é MM/DD/YYYY


    Qout(cIgual)
    QOut("  Ficha de apresentação")
    Qout(cIgual)
    QOut("Nome: " + cNome)
    Qout("Cidade: " + cCidade)
    Qout("Curso: " + cCurso)
    Qout(cIgual)
    Qout("Data de hoje: " + DToC(dData_de_hoje)) // Na documentação mostra que converte a data para caracteres. Ai da certo no terminal, e vem bem formatadinha.
    Qout("Horário atual: " + cHora)
    Qout(cIgual)

RETURN NIL