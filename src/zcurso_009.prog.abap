*&---------------------------------------------------------------------*
*& Report ZCURSO_009
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_009.

* Tipos
*---------------------------------------------------
* S - Sucesso
* E - Erro
* W - Aviso
* I - Informção
* A - Abortar
* X - Cancelar (DUMP)

*    Comportamentos da mensagem

* Usos
*MESSAGE 'Tsete' TYPE 'S'.
*MESSAGE 'Teste' TYPE 'S' DISPLAY LIKE 'E'.
          "s:tipo de msg| 000:num. da msg| ztest:Classe de mensagem(Tipo text-001)| WITH: parametro da mesagem (&)
*MESSAGE s000(ztest) WITH 'Giuliana'.

"sy-msgid: variavel global existente (nativa)
*sy-msgid = 'ZTEST'.
*MESSAGE ID sy-msgid TYPE 'S' NUMBER 000 WITH 'Giuliana'.

*DATA: ld_message TYPE string.
*MESSAGE s000(ztest) WITH 'Giuliana' INTO ld_message.
*WRITE ld_message.
*SKIP.

*SELECTION-SCREEN BEGIN OF BLOCK b1.
*                              "campo obrigatório |com um texto dentro do campo
*  PARAMETERS p_msg(60) TYPE c OBLIGATORY DEFAULT 'Isso é uma mansagem'.
*  PARAMETERS p_type TYPE c OBLIGATORY.
*SELECTION-SCREEN END OF BLOCK b1.

*AT SELECTION-SCREEN.
*  IF p_type = 'W'.
*    MESSAGE 'Isso é um aviso' TYPE 'W'.
*  ENDIF.

START-OF-SELECTION.
*  MESSAGE p_msg TYPE p_type.

*  DATA: ld_message TYPE string.
*  MESSAGE w000(ztest)  INTO ld_message.
*  WRITE ld_message.
*  SKIP.

 MESSAGE 'Isso é um aviso' TYPE 'S' DISPLAY LIKE 'W'.

  WRITE 'Fim do programa'.
