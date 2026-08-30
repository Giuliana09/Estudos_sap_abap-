*&---------------------------------------------------------------------*
*& Report ZEXERCICIO_001
*&---------------------------------------------------------------------*
*&   Calculadora de Desconto Simples
*&---------------------------------------------------------------------*
REPORT zexercicio_001.

CONSTANTS gc_taxa(6) TYPE p DECIMALS 2 VALUE '0.10'.

DATA: gv_vfinal(6) TYPE p DECIMALS 2,
      gv_desc(6)   TYPE p DECIMALS 2.

SELECTION-SCREEN BEGIN OF BLOCK b1.
  PARAMETERS: p_nome     TYPE string OBLIGATORY .
  PARAMETERS: p_vprod(6) TYPE p DECIMALS 2 OBLIGATORY.
SELECTION-SCREEN END OF BLOCK b1.


START-OF-SELECTION.

  IF p_vprod > 100.

    gv_desc   = p_vprod * gc_taxa.
    gv_vfinal = p_vprod - gv_desc.

    WRITE: | Cliente { p_nome }, você ganhou desconto! Valor final: { gv_vfinal } |.

  ELSEIF p_vprod = 0.

     MESSAGE 'Por favor coloque um valor válido para o produto' TYPE 'S' DISPLAY LIKE 'W'.

  ELSE.

    WRITE: | Cliente { p_nome }, não foi possível aplicar o desconto! O valor mínimo para desconto é de 100 reais. |.

  ENDIF.
