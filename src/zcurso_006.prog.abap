*&---------------------------------------------------------------------*
*& Report ZCURSO_006
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
REPORT ZCURSO_006.

SELECTION-SCREEN BEGIN OF BLOCK bloco1.
  PARAMETERS p_1bim(12) TYPE p DECIMALS 2.
  PARAMETERS p_2bim(12) TYPE p DECIMALS 2.
  PARAMETERS p_3bim(12) TYPE p DECIMALS 2.
  PARAMETERS p_4bim(12) TYPE p DECIMALS 2.
SELECTION-SCREEN END OF BLOCK bloco1.

START-OF-SELECTION.
  DATA ld_media(12) TYPE p DECIMALS 2.

  ld_media = ( p_1bim + p_2bim + p_3bim + p_4bim ) / 4.

*  IF ld_media < 60. "SE
*    WRITE: | Sua média anual foi de { ld_media } você foi reprovado! |.
*  ELSE. "SENÃO
*    WRITE: | Sua média anual foi de { ld_media } você foi aprovado, parabéns! |.
*  ENDIF.

  IF ld_media >= 0 AND ld_media <= 60.
    WRITE: | Sua média anual foi de { ld_media } você foi reprovado! |.
  ELSEIF ld_media >= 51 AND ld_media <= 59.
    WRITE: | Sua média anual foi de { ld_media } você quase passou, estude um pouco mais. |.
  ELSEIF ld_media >= 60 AND ld_media <= 100.
    WRITE: | Sua média anual foi de { ld_media } Parabéns, você passou! |.
  ELSE.
    WRITE 'Sua nota é inconsistente, não pode ser maior que 100.'.
  ENDIF.

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
