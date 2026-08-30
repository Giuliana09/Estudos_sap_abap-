*&---------------------------------------------------------------------*
*& Report ZCURSO_007
*&---------------------------------------------------------------------*
**& Programa que informa o tipo veículo que você pode dirigir pela categoria
*&
*& Faça um programa que receba a categoria da CNH e escreva na tela qual
*& categoria pode dirigir
*&
*& Lista de categoria:
*&
*& A = Moto
*& B = Carro
*& C = Veículos de carga
*& D = Transporte de passageiros
*& E = Caminhões
*&---------------------------------------------------------------------*
REPORT ZCURSO_007.

SELECTION-SCREEN BEGIN OF BLOCK b1.
  PARAMETERS p_cat(1) TYPE c.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.
  DATA ld_descricao TYPE string.

  CASE p_cat.
    WHEN 'A'.
      ld_descricao = 'Moto'.
    WHEN 'B'.
      ld_descricao = 'Carro'.
    WHEN 'C'.
      ld_descricao = 'Veículos de carga'.
    WHEN 'D'.
      ld_descricao = 'Transporte de passageiros'.
    WHEN 'E'.
      ld_descricao = 'Caminhões'.
    WHEN OTHERS.
      ld_descricao = 'Categoria inválida'.
  ENDCASE.

  WRITE ld_descricao.
