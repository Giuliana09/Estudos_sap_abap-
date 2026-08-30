*&---------------------------------------------------------------------*
*& Include          ZCURSO_013_FRM
*&---------------------------------------------------------------------*
FORM calcular_media
  USING ud_1bim ud_2bim ud_3bim ud_4bim
  CHANGING cd_media .
  DATA ld_media(12) TYPE p DECIMALS 2.
  ld_media = ( ud_1bim + ud_2bim + ud_3bim + ud_4bim ) / 4.
  cd_media = ld_media.
ENDFORM.

FORM escrever_mensagem.

  IF gd_media     >= 0  AND gd_media <= 60.
    gd_mesagem =  | Sua média anual foi de { gd_media } você foi reprovado! |.
  ELSEIF gd_media >= 51 AND gd_media <= 59.
    gd_mesagem =  | Sua média anual foi de { gd_media } você quase passou, estude um pouco mais. |.
  ELSEIF gd_media >= 60 AND gd_media <= 100.
    gd_mesagem =  | Sua média anual foi de { gd_media } Parabéns, você passou! |.
  ELSE.
    gd_mesagem = 'Sua nota é inconsistente, não pode ser maior que 100.'.
  ENDIF.

  WRITE gd_mesagem.
ENDFORM.
