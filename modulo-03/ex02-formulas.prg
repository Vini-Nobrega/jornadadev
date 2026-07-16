#define PI 3.14159

FUNCTION Main()
    LOCAL cRaio := ""
    LOCAL nRaio := 0
    LOCAL cA := ""
    LOCAL nA := 0
    LOCAL cB := ""
    LOCAL nB := 0
    LOCAL cPeso := ""
    LOCAL nPeso := 0
    LOCAL cAltura := ""
    LOCAL nAltura := 0
    LOCAL nArea := 0
    LOCAL nHipotenusa := 0
    LOCAL nIMC := 0
    // Sem usar input, apenas o ACCEPT e depois convertendo

    ACCEPT "Digite o valor do Raio: " TO cRaio
    ACCEPT "Digite o valor de A: " TO cA
    ACCEPT "Digite o valor de B: " TO cB
    ACCEPT "Digite o seu peso: " TO cPeso
    ACCEPT "Digite a sua altura: " TO cAltura
    
    nRaio := Val(cRaio)
    nA := Val(cA)
    nB := Val(cB)
    nPeso := Val(cPeso)
    nAltura := Val(cAltura)

    // A-) A área de um círculo com raio informado
    nArea := PI * (nRaio^2)
    QOut("O valor da área do círculo é de: " + AllTrim(str(nArea, 10, 2)))

    // B-) A hipotenusa de um triângulo retângulo
    nHipotenusa := Sqrt(((nA^2) + (nB^2)))
    QOut("O valor da hipotenusa é de: " + AllTrim(str(nHipotenusa, 10, 2)))

    // C-) O índice de massa corporal (IMC = peso / altura2) 
    nIMC := nPeso / (nAltura^2)
    QOut("O seu IMC é de: " + Alltrim(str(nIMC, 10, 2)))

RETURN NIL