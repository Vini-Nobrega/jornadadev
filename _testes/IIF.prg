FUNCTION Main()
    LOCAL nIdade := 0

    INPUT "Digite sua idade: " TO nIdade

    QOut(IIF(nIdade > 18, "Tem mais de 18", "É menor de idade"))

RETURN NIL