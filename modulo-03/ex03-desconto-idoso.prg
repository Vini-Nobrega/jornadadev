FUNCTION Main()

    LOCAL cNome := ""
    LOCAL cDataNascimento := ""
    LOCAL dDataNascimento := CToD("")
    LOCAL nIdade := 0
    LOCAL cPreco := ""
    LOCAL nPreco := 0
    LOCAL nDesconto := 0
    LOCAL nTotal := 0
    
    SET DATE FORMAT TO "DD/MM/YYYY"
    hb_cdpSelect("PT850")

    ACCEPT "Digite seu nome: " to cNome
    ACCEPT "Digite a sua data de nascimento: " to cDataNascimento
    ACCEPT "Digite o preço do produto: " to cPreco

    dDataNascimento := CToD(cDataNascimento)
    nPreco := Val(cPreco)

    nIdade := (Date() - dDataNascimento) / 365
    QOut("Você tem " + Alltrim(str(int(nIdade))) + " Anos")

    IF nIdade > 60
        nDesconto := nPreco * 0.125
    ELSE
        nDesconto := 0
    ENDIF

    nTotal := nPreco - nDesconto

    QOut("===============================")
    QOut("Resumo:")
    QOut("Nome do Cliente: " + cNome)
    QOut("Idade do Cliente: " + Alltrim(str(int(nIdade))))
    QOut("Preço do Produto: " + Alltrim(str(nPreco, 10, 2)))
    QOut("Valor do Desconto: " + Alltrim(str(nDesconto, 10, 2)))
    QOut("Valor Total: " + Alltrim(str(nTotal, 10, 2)))
    QOut("===============================")

RETURN NIL