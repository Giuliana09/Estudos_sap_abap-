# 🚀 Jornada de Estudos SAP ABAP

Bem-vindo(a) ao meu repositório de estudos práticos no ecossistema **SAP ABAP**! 

Este repositório reúne os códigos e relatórios (`Reports`) desenvolvidos durante meu acompanhamento de cursos, práticas no ambiente **Mini SAP** e resolução de exercícios focados na sintaxe procedural, lógica de programação e boas práticas.

---

## 🛠️ Tecnologias e Ferramentas
* **Ambiente:** SAP ERP / Mini SAP
* **Linguagem:** ABAP (Advanced Business Application Programming)
* **IDE/Transações:** SE38 (ABAP Editor), SE10 (Transport Organizer), SE91 (Message Maintenance)
* **Versionamento:** abapGit / GitHub

---

## 📌 Índice de Programas e Exercícios

### 1. Fundamentos e Sintaxe Básica
* [`ZCURSO_002.abap`](././src/ZCURSO_002.abap) — **Declaração de Variáveis e Tipos de Dados:** Exemplo prático cobrindo tipos primários (`I`, `C`, `D`, `T`, `P`), comandos de exibição (`WRITE`, `NEW-LINE`), formatação manual de hora e uso de *String Templates* (`DATE = USER`, `TIME = USER`).
* [`ZCURSO_003.abap`](./src/ZCURSO_003.abap) — **Constantes e Operações Matemáticas:** Cálculo da área de um círculo utilizando a palavra-chave `CONSTANTS`, manipulação de decimais e cálculo com variáveis.
* [`ZCURSO_004.abap`](./src/ZCURSO_004.abap) — **Manipulação de Textos:** Concatenação de strings utilizando o comando clássico `CONCATENATE ... SEPARATED BY` e o uso moderno de *String Templates*.

---

### 2. Telas de Seleção e Estruturas Condicionais
* [`ZCURSO_005.abap`](./src/ZCURSO_005.abap) — **Parâmetros e Bloco de Seleção:** Criação de telas com `SELECTION-SCREEN BEGIN OF BLOCK` e recebimento de dados via `PARAMETERS` para cálculo de média.
* [`ZCURSO_006.abap`](./src/ZCURSO_006.abap) — **Lógica Condicional (IF / ELSEIF / ELSE):** Validação de faixas de notas e uso de operadores lógicos (`AND`, `OR`, `<=`, `>=`).
* [`ZCURSO_007.abap`](./src/ZCURSO_007.abap) — **Estrutura CASE / WHEN:** Mapeamento de categorias de CNH para descrição de veículos utilizando controle de fluxo por chave.
* [`ZCURSO_008.abap`](./src/ZCURSO_008.abap) — **Símbolos de Texto (Text Symbols):** Reuso de textos fixos da tela através da abstração `TEXT-00x`.

---

### 3. Mensagens, Eventos e Modularização
* [`ZCURSO_010.abap`](./src/ZCURSO_010.abap) — **Classes de Mensagens (SE91):** Uso de mensagens do sistema (`MESSAGE`), passagem de parâmetros dinâmicos com `WITH` e definição de classe global no programa.
* [`ZCURSO_011.abap`](./src/ZCURSO_011.abap) — **Eventos de Tela de Seleção:** Demonstração prática do ciclo de vida da tela com `AT SELECTION-SCREEN`, `OUTPUT`, `ON <field>`, `ON HELP-REQUEST` e blocos.
* [`ZCURSO_012.abap`](./src/ZCURSO_012.abap) — **Modularização por Includes:** Separação estrutural de um Report em arquivos de topo (`_TOP`), seleção (`_SEL`) e execução (`_SOS`).
* [`ZCURSO_013.abap`](./src/ZCURSO_013.abap) — **Sub-rotinas (FORMs):** Uso do comando `PERFORM` e criação de rotinas reutilizáveis em `INCLUDES` específicos (`_FRM`).

---

### 4. Estruturas e Tabelas Internas
* [`ZCURSO_014.abap`](./src/ZCURSO_014.abap) — **Declaração e Preenchimento de Estruturas (Work Areas):** Criação de estruturas locais com `DATA BEGIN OF ... END OF` e atribuição de valores campo a campo vs. variáveis primitivas isoladas.
* [`ZCURSO_015.abap`](./src/ZCURSO_015.abap) — **Manipulação Avançada de Estruturas:** Demonstração de preenchimento individual de componentes e atribuição direta por posição de memória (string contínua) em estruturas de dados.
* [`ZCURSO_016.abap`](./src/ZCURSO_016.abap) — **Tabelas Internas Standard (`STANDARD TABLE`):** Manipulação de tabelas em memória baseadas em estruturas do ABAP Dictionary (`SE11`), cobrindo comandos de inserção (`APPEND`), alteração por índice (`MODIFY ... INDEX`) e limpeza total de dados (`CLEAR`).

---

### 5. Exercícios Práticos de Fixação
* [`ZEXERCICIO_001.abap`](./src/zexercicios/ZEXERCICIO_001.abap) — **Calculadora de Desconto com Validação:** Aplicação prática combinando `PARAMETERS` obrigatórios (`OBLIGATORY`), validação com mensagem de aviso (`DISPLAY LIKE 'W'`) e cálculo de porcentagem condicional.

---

## 👩‍💻 Autora
**Giuliana Maria Gralha dos Santos**  
*Desenvolvedora SAP ABAP / Analista de TI em transição*  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/giuliana-gralha-8754b5190/)

---
