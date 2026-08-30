*&---------------------------------------------------------------------*
*& Report ZCURSO_014
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_014.

START-OF-SELECTION.
*DECLARAÇÃO DE UMA ESTRUTURA (UMA DAS FORMAS)
  DATA: BEGIN OF ls_cliente, "L- local | S- estrutura. -> nomenclatura
    id        TYPE int4,
    nome(20)  TYPE c,
    email(50) TYPE c,
    END OF ls_cliente.

  DATA ld_id        TYPE int4.
  DATA ld_nome(20)  TYPE c.
  DATA ld_email(50) TYPE c.


  "Preenchendo uma estrutura.
  ls_cliente-id    = 1.
  ls_cliente-nome  = 'Giuliana Maria'.
  ls_cliente-email = 'giuliana@gmail.com'.


  "Preenchendo uma variável normal
  ld_id    = 2.
  ld_nome  = 'Giuliana Maria'.
  ld_email = 'giuliana@gmail.com'.

  WRITE: ls_cliente-id, ls_cliente-nome, ls_cliente-email.

  NEW-LINE.

  WRITE: ld_id, ld_nome, ld_email.
