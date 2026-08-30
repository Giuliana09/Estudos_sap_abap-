*&---------------------------------------------------------------------*
*& Report ZCURSO_008
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_008.

SELECTION-SCREEN BEGIN OF BLOCK b1.
  PARAMETERS p_cat(1) TYPE c.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.
  DATA ld_descricao TYPE string.

  CASE p_cat.
    WHEN 'A'.
      ld_descricao = text-001.
    WHEN 'B'.
      ld_descricao = text-002.
    WHEN 'C'.
      ld_descricao = text-003.
    WHEN 'D'.
      ld_descricao = text-004.
    WHEN 'E'.
      ld_descricao = text-005.
    WHEN OTHERS.
      ld_descricao = text-006.
  ENDCASE.

  WRITE ld_descricao.
