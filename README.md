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
* [`zcurso_002.prog.abap`](./src/zcurso_002.prog.abap) — **Declaração de Variáveis e Tipos de Dados:** Exemplo prático cobrindo tipos primários (`I`, `C`, `D`, `T`, `P`), comandos de exibição (`WRITE`, `NEW-LINE`), formatação manual de hora e uso de *String Templates* (`DATE = USER`, `TIME = USER`).
* [`ZCURSO_003.prog.abap`](./src/zcurso_003.prog.abap) — **Constantes e Operações Matemáticas:** Cálculo da área de um círculo utilizando a palavra-chave `CONSTANTS`, manipulação de decimais e cálculo com variáveis.
* [`zcurso_004.prog.abap`](./src/zcurso_004.prog.abap) — **Manipulação de Textos:** Concatenação de strings utilizando o comando clássico `CONCATENATE ... SEPARATED BY` e o uso moderno de *String Templates*.

---

### 2. Telas de Seleção e Estruturas Condicionais
* [`zcurso_005.prog.abap`](./src/zcurso_005.prog.abap) — **Parâmetros e Bloco de Seleção:** Criação de telas com `SELECTION-SCREEN BEGIN OF BLOCK` e recebimento de dados via `PARAMETERS` para cálculo de média.
* [`zcurso_006.prog.abap`](./src/zcurso_006.prog.abap) — **Lógica Condicional (IF / ELSEIF / ELSE):** Validação de faixas de notas e uso de operadores lógicos (`AND`, `OR`, `<=`, `>=`).
* [`zcurso_007.prog.abap`](./src/zcurso_007.prog.abap) — **Estrutura CASE / WHEN:** Mapeamento de categorias de CNH para descrição de veículos utilizando controle de fluxo por chave.
* [`zcurso_008.prog.abap`](./src/zcurso_008.prog.abap) — **Símbolos de Texto (Text Symbols):** Reuso de textos fixos da tela através da abstração `TEXT-00x`.

---

### 3. Mensagens, Eventos e Modularização
* [`zcurso_010.prog.abap`](./src/zcurso_010.prog.abap) — **Classes de Mensagens (SE91):** Uso de mensagens do sistema (`MESSAGE`), passagem de parâmetros dinâmicos com `WITH` e definição de classe global no programa.
* [`zcurso_011.prog.abap`](./src/zcurso_011.prog.abap) — **Eventos de Tela de Seleção:** Demonstração prática do ciclo de vida da tela com `AT SELECTION-SCREEN`, `OUTPUT`, `ON <field>`, `ON HELP-REQUEST` e blocos.
* [`zcurso_012.prog.abap`](./src/zcurso_012.prog.abap) — **Modularização por Includes:** Separação estrutural de um Report em arquivos de topo (`_TOP`), seleção (`_SEL`) e execução (`_SOS`).
* [`zcurso_013.prog.abap`](./src/zcurso_013.prog.abap) — **Sub-rotinas (FORMs):** Uso do comando `PERFORM` e criação de rotinas reutilizáveis em `INCLUDES` específicos (`_FRM`).

---

### 4. Estruturas e Tabelas Internas
* [`zcurso_014.prog.abap`](./src/zcurso_014.prog.abap) — **Declaração e Preenchimento de Estruturas (Work Areas):** Criação de estruturas locais com `DATA BEGIN OF ... END OF` e atribuição de valores campo a campo vs. variáveis primitivas isoladas.
* [`zcurso_015.prog.abap`](./src/zcurso_015.prog.abap) — **Manipulação Avançada de Estruturas:** Demonstração de preenchimento individual de componentes e atribuição direta por posição de memória (string contínua) em estruturas de dados.
* [`zcurso_016.prog.abap`](./src/zcurso_016.prog.abap) — **Tabelas Internas Standard (`STANDARD TABLE`):** Manipulação de tabelas em memória baseadas em estruturas do ABAP Dictionary (`SE11`), cobrindo comandos de inserção (`APPEND`), alteração por índice (`MODIFY ... INDEX`) e limpeza total de dados (`CLEAR`).

---

### 5. Exercícios Práticos de Fixação
* [`ZEXERCICIO_001.prog.abap`](./src/zexercicios/ZEXERCICIO_001.prog.abap) — **Calculadora de Desconto com Validação:** Aplicação prática combinando `PARAMETERS` obrigatórios (`OBLIGATORY`), validação com mensagem de aviso (`DISPLAY LIKE 'W'`) e cálculo de porcentagem condicional.

---
## 📸 Demonstração Prática do Programa (ZCURSO_013)

### 🖥️ 1. Ambiente Local (Mini SAP no VirtualBox)
Configuração e execução do servidor NetWeaver em ambiente Linux virtualizado.

<img width="80%" alt="Image" src="https://github.com/user-attachments/assets/b88841cf-26bb-47d5-9c3b-cce7c9201721" />

### 💻 2. Desenvolvimento no ABAP Editor (SE38)
Modularização de código utilizando Includes e sub-rotinas (`FORM`).

<img width="70%" alt="Image" src="https://github.com/user-attachments/assets/17aa5eeb-a411-4d48-be47-d385c04f4521" />

### 📝 3. Tela de Seleção (Selection Screen)
Interface de entrada de dados com parâmetros obrigatórios e validações de tela.

<img width="70%" alt="Image" src="https://github.com/user-attachments/assets/bf76078a-c7ec-4ab3-886c-4b1ce1eea1ab" />

### 🐞 4. Depuração de Código (ABAP Debugger)
Inspeção de variáveis em tempo de execução (`LD_MEDIA`), acompanhamento da pilha de eventos e validação da lógica condicional.

<img width="70%" alt="Image" src="https://github.com/user-attachments/assets/bc10fb95-6d33-4634-bf5c-9cd4a134a493" />

### 📄 5. Resultado da Execução (Output)
Exibição do relatório final processado via instrução `WRITE`.

<img width="60%" alt="Image" src="https://github.com/user-attachments/assets/a1c4ab8b-5f72-4a84-b5ff-1c4fb5918deb" />

### 📦 6. Sincronização com abapGit
Interface de gerenciamento e integração do pacote local ao repositório do GitHub via abapGit.

<img width="70%" alt="Image" src="https://github.com/user-attachments/assets/29125a28-1080-4fd8-ba47-f18ad37f46bb" />

---

## 👩‍💻 Autora
**Giuliana Maria Gralha dos Santos**  
*Desenvolvedora SAP ABAP / Analista de TI em transição*  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/giuliana-gralha-8754b5190/)
