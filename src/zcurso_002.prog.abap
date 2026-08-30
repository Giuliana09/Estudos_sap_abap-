*&---------------------------------------------------------------------*
*& Report ZCURSO_002
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_002.

*DECLARAÇÃO DE VARIAVEL
*Data <nome da variável> TYPE <tipo da variável> LENGTH <tamanho> VALUE <valor a ser impresso>

  DATA ld_id        TYPE i.
  DATA ld_nome(100) TYPE c.
  DATA ld_dtnasc    TYPE d.
  DATA ld_hrnasc    TYPE t.
  DATA ld_peso(6)   TYPE p DECIMALS 3.

*L - para variaveis local
*D - para variaveis simples (nome, datas...)
*TYPE - tipo da variaveis (texto, numero, logico...)

*Tipos:
* i     - número
* c     - texto (porém precisa falar o tamanho)
*	String  - Texto (sem limite fixo).
* d     - data
* t     - tempo
* p     - decimal/financeiro (25.99)
* f     - float de ponto flutuante (notação científica: 1.23E+05)
* n     - Texto composto apenas por números (com zeros à esquerda). '00012345' (ex: CPF)
*	x       - Hexadecimal (tamanho fixo).
*	XSTRING - Hex String; Sequência de bytes dinâmicos (para arquivos/PDFs).

*  PREENCHENDO AS VARIAVEIS
  ld_id     = 1.
  ld_nome   = 'Giuliana Maria'.
  ld_dtnasc = '20000828'.
  ld_hrnasc = '121035'.
  ld_peso   = `80.00`.


*ESCREVENDO DADOS NA TELA
  WRITE (12) 'Dados do cliente'.
  NEW-LINE. "pula uma linha;nova linha

  WRITE (12) 'Id'.
  WRITE ld_id LEFT-JUSTIFIED.
  NEW-LINE.

  WRITE (12) 'Nome'.
  WRITE ld_nome LEFT-JUSTIFIED.
  NEW-LINE.

  WRITE (12) 'Peso'.
  WRITE ld_peso LEFT-JUSTIFIED.
  NEW-LINE.

  WRITE (12) 'Nascimento'.
  WRITE ld_dtnasc DD/MM/YYYY.
  NEW-LINE.

  WRITE '----------------- Novo formatação de hora (ENVIRONMENT TIME FORMAT) -----------------'.
  NEW-LINE.

  WRITE ld_hrnasc ENVIRONMENT TIME FORMAT.
  NEW-LINE.

  WRITE '----------------- Novo formatação de hora (Manual) -----------------'.
  NEW-LINE.

  "Formatando manualmente
  WRITE: ld_hrnasc+0(2), ':',
         ld_hrnasc+2(2), ':',
         ld_hrnasc+4(2).
  NEW-LINE.

  WRITE '----------------- Novo formatação de hora (DATE = USER)-----------------'.
  NEW-LINE.
"3. EXIBIÇÃO USANDO STRING TEMPLATE (ABAP Moderno)
  " As barras verticais | | indicam que é um texto com variáveis interpoladas (igual `template literals` no JavaScript/Python).
  " Tudo o que estiver dentro de { } é código ABAP/variável.

  WRITE: |Nascimento: { ld_dtnasc DATE = USER } às { ld_hrnasc TIME = USER }|.
  NEW-LINE.

  "Quando colocamos DATE = USER e TIME = USER, estamos dizendo ao ABAP:
  "Formate essa data e hora exatamente do jeito que o usuário logado prefere ver na tela dele".
