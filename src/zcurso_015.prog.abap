*&---------------------------------------------------------------------*
*& Report ZCURSO_015
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_015.

START-OF-SELECTION.
*DECLARAÇÃO DE UMA ESTRUTURA (UMA DAS FORMAS)
  DATA: BEGIN OF ls_localizacao "L- local | S- estrutura. -> nomenclatura
    , pais(2)    TYPE c
    , uf(2)      TYPE c
    , cidade(20) TYPE c
    , END OF ls_localizacao.

*Forma manual (
    ls_localizacao-pais   ='BR'.
    ls_localizacao-uf     ='SP'.
    ls_localizacao-cidade ='São Paulo'.

* Ou tudo de uma vez
    ls_localizacao = 'BRSPSão Paulo'.
    " mas se tivesse um outro campo em seguida,
    " seria necessario ocupar as proximas 20 posições
    " para enfim inserir o poximo valor do outro campo.

    WRITE: ls_localizacao-pais
         , ls_localizacao-uf
         , ls_localizacao-cidade.

    NEW-LINE.

    WRITE ls_localizacao.
