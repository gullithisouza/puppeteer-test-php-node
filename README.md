# 📄 Gerador de PDF - Benchmark Node.js vs PHP

Este projeto tem como objetivo comparar a **velocidade de geração de PDFs** utilizando:
- **Node.js** (com Puppeteer)
- **PHP** (com Browsershot + Puppeteer)

A execução mede o tempo individual de cada processo para uma análise clara de performance.

---

## ⚙️ Pré-requisitos

- Node.js instalado (v18+ recomendado)
- PHP instalado (v8.2+ recomendado)
- Composer instalado
- Puppeteer instalado via `npm`
- Browsershot instalado via `composer`

---

## 📦 Instalação rápida

```bash
# Instalar dependências PHP
composer install

# Instalar Puppeteer no Node.js
npm install puppeteer
```

---

## 🚀 Como rodar o benchmark

Execute o arquivo `start.bat`:

```bash
start.bat
```

O script irá:
- Rodar o gerador Node.js
- Rodar o gerador PHP
- Medir o tempo de execução de cada um
- Exibir os resultados no terminal

---

## 📊 Exemplo de execução

```plaintext
Iniciando geração de PDF...

[Node.js] Gerando PDF...
[Node.js] PDF gerado com sucesso!
Tempo Node.js: 2 segundos

[PHP] Gerando PDF...
[PHP] PDF gerado com sucesso!
Tempo PHP: 5 segundos

Todos os processos finalizados.
```

---

## 📝 Estrutura de pastas

```plaintext
/
├── index.js         # Script Node.js para gerar PDF
├── index.php        # Script PHP para gerar PDF
├── start.bat     # Script para executar os testes
├── package.json         # Dependências Node.js (Puppeteer)
├── composer.json        # Dependências PHP (Browsershot)
└── README.md            # Este arquivo
```

---

## 📚 Tecnologias utilizadas

- [Node.js](https://nodejs.org/)
- [Puppeteer](https://pptr.dev/)
- [PHP](https://www.php.net/)
- [Browsershot (Spatie)](https://github.com/spatie/browsershot)

---

## 🏁 Resultado esperado

Após a execução, você terá dois arquivos PDF gerados:
- `pdf.node.pdf`
- `pdf.php.pdf`

E poderá comparar qual tecnologia foi mais rápida no seu ambiente.

---

## 📢 Observações

- Em geral, o **Node.js** tende a ser mais rápido, pois o Puppeteer é usado nativamente.
- O **PHP Browsershot** depende de uma camada adicional (PHP → Node.js), o que pode impactar o tempo.
- O tempo pode variar de acordo com o sistema operacional, versão do Node/PHP e capacidade da máquina.

---

# 🏆 Vamos ao teste!

🚀 Execute e veja qual tecnologia vence no seu cenário!