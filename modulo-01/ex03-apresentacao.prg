//ficha de apresenta‡Æo
//Nome: Vin¡cius
//Cidade: Guarulhos
//Curso: Harbour / ADVPL

FUNCTION Main()
    LOCAL cNome := "Vin¡cius"
    LOCAL cCidade := "Guarulhos"
    LOCAL cCurso := "Harbour / ADVPL"
    LOCAL cIgual := "============================"

    hb_cdpSelect("PT850") // Para corrigir o erro na acentua‡Æo (mais especificamente o do "~")

    Qout(cIgual)
    QOut("  Ficha de apresenta‡Æo")
    Qout(cIgual)
    QOut("Nome: " + cNome)
    Qout("Cidade: " + cCidade)
    Qout("Curso: " + cCurso)
    Qout(cIgual)

RETURN NIL