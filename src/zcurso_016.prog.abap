*&---------------------------------------------------------------------*
*& Report ZCURSO_016
*&---------------------------------------------------------------------*
*&        TABELA INTERNA STANDARD
*&---------------------------------------------------------------------*
REPORT ZCURSO_016.


START-OF-SELECTION.
  DATA lt_cliente TYPE STANDARD TABLE OF zcurso_cliente_s. "tabela interna. zcurso_cliente_s é um dicionario de dados
  DATA ls_cliente TYPE zcurso_cliente_s. "linha da tabela interna do mesmo tipo da estrutura

  ls_cliente-id = 1.
  ls_cliente-nome = 'Giuliana'.
  APPEND ls_cliente TO lt_cliente. "inserindo dado dentro da tabela

  "deletar linha da tabela
  CLEAR lt_cliente.


  WRITE 'Fim'.
