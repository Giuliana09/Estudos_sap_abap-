*&---------------------------------------------------------------------*
*& Include          ZCURSO_012_SOS
*&---------------------------------------------------------------------*
START-OF-SELECTION.
  PERFORM calcular_media
    USING p_1bim p_2bim p_3bim p_4bim
    CHANGING gd_media.
  PERFORM escrever_mensagem.
