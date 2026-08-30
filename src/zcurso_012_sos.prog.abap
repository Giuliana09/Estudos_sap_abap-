*&---------------------------------------------------------------------*
*& Include          ZCURSO_012_SOS
*&---------------------------------------------------------------------*
START-OF-SELECTION.

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
