FUNCTION Main()

    LOCAL nIdade := 0
    LOCAL nPendentes := 0
    LOCAL nAdicionaDependente := 0
    LOCAL nValorMensal := 0

    hb_cdpSelect("PT850")

    INPUT "Digite a sua idade: " TO nIdade
    INPUT "Digite o total de pendente: " TO nPendentes

    IF nIdade <= 0

        QOut("Por favor, digite uma idade acima de 0")
        RETURN NIL

    ENDIF    

    IF nPendentes >= 0
        nAdicionaDependente := nPendentes * 90

    ELSE
        QOut("Digite um valor igual ou maior que 0")
        RETURN NIL
    ENDIF

    DO CASE
        
        CASE nIdade <= 25
            nValorMensal := 180
            
        CASE nIdade <= 40
            nValorMensal := 260

        CASE nIdade <= 60
            nValorMensal := 380

        OTHERWISE
            nValorMensal := 520

    ENDCASE

    nValorMensal := nValorMensal + nAdicionaDependente

    QOut("O valor mensal total é de R$" + Alltrim(str(nValorMensal, 10, 2)))


RETURN NIL