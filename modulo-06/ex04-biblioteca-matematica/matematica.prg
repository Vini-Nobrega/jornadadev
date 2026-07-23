FUNCTION FatorialN(nN)

    LOCAL nI := 0
    LOCAL nFatorial := 1

    IF nN < 0
        RETURN NIL
    ENDIF

    FOR nI := 1 TO nN
        nFatorial := nFatorial * nI
    NEXT

RETURN nFatorial


FUNCTION EhPrimo(nN)

    LOCAL nI := 0

    IF nN < 2
        RETURN .F.
    ENDIF

    FOR nI := 2 TO nN - 1

        IF nN % nI == 0
            RETURN .F.
        ENDIF

    NEXT

RETURN .T.


FUNCTION MDC(nA, nB)

    LOCAL nResto := 0

    WHILE nB <> 0

        nResto := nA % nB
        nA := nB
        nB := nResto

    ENDDO

RETURN nA

FUNCTION MMC(nA, nB)

    LOCAL nResultado := 0

    IF nA == 0 .OR. nB == 0
        RETURN 0
    ENDIF

    nResultado := nA * nB / MDC(nA, nB)

RETURN nResultado