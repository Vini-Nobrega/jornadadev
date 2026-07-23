REQUEST DBFCDX

FUNCTION Main()

    LOCAL aEstrutura := { {"NOME", "C", 30, 0}, {"IDADE", "N", 3, 0}, {"ATIVO", "L", 1, 0} }

    hb_cdpSelect("PT850")

    IF !File("CLIENTES.DBF")

        DbCreate("CLIENTES.DBF", aEstrutura, "DBFCDX")
        QOut("Tabela CLIENTES.DBF criada!")

    ENDIF

    dbUseArea(.T., "DBFCDX", "CLIENTES.DBF", "CLIENTES", .T., .F.)

    dbAppend()

    CLIENTES->NOME := "Ana Souza"
    CLIENTES->IDADE := 25
    CLIENTES->ATIVO := .T.

    dbCommit()

    dbGoTop()

    DO WHILE !Eof()

        QOut(CLIENTES->NOME, CLIENTES->IDADE, CLIENTES->ATIVO)
        dbSkip()

    ENDDO

    dbCloseArea()

RETURN NIL