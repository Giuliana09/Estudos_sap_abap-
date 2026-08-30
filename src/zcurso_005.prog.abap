*&---------------------------------------------------------------------*
*& Report ZCURSO_005
*&---------------------------------------------------------------------*
*&
*& Calcule a média anual dos 4 bimeste
*&
*& Faça um programa que receba as 4 notas e calcule a média anual do aluno. Após calcular
*& escreva o resultado na tela conforme exemplo:
*&
*& A média anual do aluno é: 75
*&---------------------------------------------------------------------*
REPORT ZCURSO_005.
SELECTION-SCREEN BEGIN OF BLOCK bloco1.
  PARAMETERS: p_1bim(12) TYPE p DECIMALS 2. "campo de texto
  PARAMETERS: p_2bim(12) TYPE p DECIMALS 2.
  PARAMETERS: p_3bim(12) TYPE p DECIMALS 2.
  PARAMETERS: p_4bim(12) TYPE p DECIMALS 2.
SELECTION-SCREEN END OF BLOCK bloco1.

START-OF-SELECTION.
  DATA ld_media(12) TYPE p DECIMALS 2.

  ld_media = ( p_1bim + p_2bim + p_3bim + p_4bim ) / 4.

  WRITE: |A média anual do aluno é: { ld_media } |.
