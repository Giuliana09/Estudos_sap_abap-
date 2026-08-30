*&---------------------------------------------------------------------*
*& Report ZCURSO_012
*&---------------------------------------------------------------------*
*& ESTRUTURAS CONDICIONAIS (IF, ELSE, ELSEIF)
*&
*&Faça um programa que receba as 4 notas e calcule a média anual do aluno.
*& Após calcular,verifique se a nota foi menor que 60
*&
*& se sim escreva
*& Sua média anual foi de X, você foi reprovado!
*&
*& se não escreva
*& Sua média anual foi de X, você foi aprovado, parabéns!
*& ------------------------------------
*& Após testar o programa e funcionar, altere para permitir 3 faixas de notas,
*& alterando o final da mesagem
*&
*& 0-50  : Sua nota foi muito baixa, você foi reprovado
*& 51-59 : Você quase passou, estude um pouco mais
*& 60-100: Parabéns, você passou
*&---------------------------------------------------------------------*
REPORT ZCURSO_012.

INCLUDE ZCURSO_012_TOP.
INCLUDE ZCURSO_012_SEL.
INCLUDE ZCURSO_012_SOS.


  " Operadores lógicos:
  " =   Igual
  " <>  Diferente
  " >   Maior
  " >=  Maior iqual
  " <   Menor
  " <=  Menor igual
  " NOT Inverte o valor da condição true para false / false para true

  " Combinações de AND e OR
  " True  AND True   = True
  " True  AND False  = False |Basta uma condição ser falso para cosiderar false
  " False AND False  = False

  " True  OR True   = True
  " True  OR False  = True  |Basta uma condição ser verdadeira para cosiderar True
  " False OR False  = False
