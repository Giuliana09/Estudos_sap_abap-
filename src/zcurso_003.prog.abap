*&---------------------------------------------------------------------*
*& Report ZCURSO_003
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_003.
*Faça um programa que receba o raio e calcule a área de um círculo usando variáveis e constantes.
*O resultado deve ter 2 casas decimais.
*
*PI = 3.1415926535898
*
*Fórmula
*Area = (raio * raio)*PI
*A mensagem pode ser assim: "A área de um círculo com raio de X é Y."
*Use os dados abaixo para conferir se o programa está rodando corretamente Raio 10 = Área 314.16

*Raio 10 = Área 314,16
*Raio 15 = Área 706,86
*Raio 2 = Área 12,57

*CONSTANTE
  "É uma variável com um valor pré definido que não poderá ser alterada

CONSTANTS lc_pi(12) TYPE p DECIMALS 13 VALUE `3.1415926535898`.

DATA ld_raio(12) TYPE p DECIMALS 2.
DATA ld_area(12) TYPE p DECIMALS 2.

ld_raio = 10.
ld_area = ( ld_raio * ld_raio ) * lc_pi.

WRITE: |A área de um círculo com dario de { ld_raio } é { ld_area }|.
