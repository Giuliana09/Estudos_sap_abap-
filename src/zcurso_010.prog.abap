*&---------------------------------------------------------------------*
*& Report ZCURSO_010
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_010.
*Transação SE91 | onde criar uma classe de mensagem
*Mensagem simples
*Mensagem com 1 parâmetro  | colocando o & (E comercial)
*Mensagem com 2 parâmetro  | colocando dois &
*Mensagem com documentação | clicar em cima da notificação
*Definir classe de mensagem no report

START-OF-SELECTION.
*MESSAGE s000(zcurso).
*MESSAGE s001(zcurso) WITH 'Giuliana'. "WITH valor do parâmetro
*MESSAGE s002(zcurso) WITH 'Curso' 'ABAP'.
MESSAGE s003(zcurso).
*MESSAGE s004.
