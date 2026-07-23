FUNCTION Main()
    
    LOCAL cJogadaPessoa := ""
    LOCAL cJogadaCPU := ""
    
    hb_cdpSelect("PT850")

    while .T.

        cJogadaPessoa := ValidarJogada()

        QOut("Jogada selecionada: " + cJogadaPessoa)
            
        cJogadaCPU := SortearJogadaCPU()

        QOut("A jogada sorteada foi: " + cJogadaCPU)

        QOut(DefinirVencedor(cJogadaPessoa, cJogadaCPU))
    
        IF ContinuarJogo() == .F.

            Exit

        ENDIF

    ENDDO

RETURN NIL

FUNCTION ValidarJogada()

    LOCAL cJogada := ""

    ACCEPT "Pedra, Papel ou Tesoura? Escolha: " TO cJogada
    
    cJogada := Upper(AllTrim(cJogada))

    WHILE cJogada <> "PEDRA" .AND. cJogada <> "PAPEL" .AND. cJogada <> "TESOURA"

        ACCEPT "Por favor, digite apenas: Pedra, Papel ou Tesoura: " TO cJogada

        cJogada := Upper(AllTrim(cJogada))

    ENDDO

RETURN cJogada


FUNCTION SortearJogadaCPU()

    LOCAL aEscolhas := {"PEDRA", "PAPEL", "TESOURA"}
    LOCAL nAleatorio := HB_RandomInt(1, 3)
    LOCAL cEscolha := ""

    cEscolha := aEscolhas[nAleatorio]

RETURN cEscolha


FUNCTION DefinirVencedor(cJogada1, cJogada2)

     DO CASE

        CASE cJogada1 == cJogada2
            RETURN "Empate"

        CASE (cJogada1 == "PEDRA" .AND. cJogada2 == "TESOURA") .OR. (cJogada1 == "PAPEL" .AND. cJogada2 == "PEDRA") .OR. (cJogada1 == "TESOURA" .AND. cJogada2 == "PAPEL")
            
            RETURN "Jogador ganhou!"    

        OTHERWISE

            RETURN "CPU ganhou!"

    ENDCASE

RETURN NIL


FUNCTION ContinuarJogo()

    LOCAL cContinuarJogando := ""

    ACCEPT "Deseja continuar jogando? (S/N): " TO cContinuarJogando

    cContinuarJogando := Upper(AllTrim(cContinuarJogando))

    WHILE cContinuarJogando <> "N" .AND. cContinuarJogando <> "S"

        ACCEPT "Digite apenas S ou N: " TO cContinuarJogando

        cContinuarJogando := Upper(AllTrim(cContinuarJogando))

    ENDDO

    IF cContinuarJogando == "N"
        
        RETURN .F.

    ELSE

        RETURN .T.

    ENDIF

RETURN NIL