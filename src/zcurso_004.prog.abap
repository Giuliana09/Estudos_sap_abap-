*&---------------------------------------------------------------------*
*& Report ZCURSO_004
*&---------------------------------------------------------------------*
*&  Crie um programa para receber o nome e sobrenome do convidado. Ao executar, você vai concatenar
*&  o nome e sobrenome e armazenar em uma variável com o nome completo.
*&  Depois imprima o convite conforme template abaixo:
*&
*&  Convite para a festa
*&
*&  Olá Fulano!
*&
*&  Você foi convidado para a festa de fim de ano, contamos com a sua presença!
*&
*&  Atenciosamente,
*&  EMPRESA XYZ.
*&---------------------------------------------------------------------*
REPORT ZCURSO_004.


DATA ld_nome(100)         TYPE c.
DATA ld_sobrenome(100)    TYPE c.
DATA ld_nomecompleto(201) TYPE c.

DATA ld_nomecompleto2 LIKE ld_nomecompleto. "serve para criar uma nova variavel mas com as mesmas referência de uma outra

ld_nome          = 'Giuliana'.
ld_sobrenome     = 'Gralha'.
ld_nomecompleto2 = | { ld_nome } { ld_sobrenome } |. "string templates

*CONCATENATE < variáveis que quero juntar>
*INTO <variavel onde vai armazenar texto que foi nido> SEPARATED BY ' ' <espaço entre o conteúdo,>
CONCATENATE ld_nome ld_sobrenome
       INTO ld_nomecompleto SEPARATED BY ' '.

  WRITE: 'Convite para a festa'.
  SKIP.

  WRITE: 'Olá ', ld_nomecompleto.
  SKIP.

  WRITE: / 'Você foi convidado para a festa de fim de ano, contamos com a sua presença!'.
  SKIP.

  WRITE: 'Atenciosamente,'.
  WRITE: / 'EMPRESA XYZ.'.

*&--------------------------------------------*

WRITE: / |Convite para a festa |,
       / ,
       / |Olá { ld_nomecompleto2 }! |,
       /,
       / |Você foi convidado para a festa de fim de ano, contamos com a sua presença! |,
       /,
       / |Atenciosamente, \n\n |,
       / |EMPRESA XYZ.|.
