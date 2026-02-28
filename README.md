# Land of Lisp: Learn to Program in Lisp, One Game at a Time! 

![Land of Lisp](.github/land-of-lisp.jpg)

Este repositório é uma prova de conceito para executar código **Lisp** (usando `clisp`)
dentro de um container Docker. Ele é usado para estudo do livro *Land of Lisp*,
servindo como ambiente prático para testar os exemplos e exercícios do livro.

Os códigos Lisp de estudo ficam na pasta `src` do repositório.

## Estrutura

```
.
├── Dockerfile
├── docker-compose.yml
└── src
    └── (seus arquivos .lisp aqui)
```

O `Dockerfile` usa a imagem `alpine` e instala `clisp` (além de `vim`, `bash`,
etc.). O `docker-compose.yml` define um serviço chamado `lisp` que monta a
pasta `src` em `/app` do container, de modo que você pode editar o código local
e executá‑lo lá dentro.

## Como executar

1. **Construir a imagem** (pode ser feito com `docker compose`):

   ```sh
   docker compose build
   ```

2. **Iniciar o container**

   ```sh
   docker compose up -d
   ```

3. **Entrar no container** e rodar o código Lisp:

   ```sh
   docker compose exec lisp bash
   # dentro do container:
   clisp [file].lisp
   ```

   Você também pode, a partir do host, rodar diretamente o código sem abrir o shell:

   ```sh
   docker compose exec lisp clisp /app/[file].lisp
   ```

4. **Parar o container** quando não precisar mais:

   ```sh
   docker compose down
   ```

Você pode editar os arquivos `.lisp` dentro de `src` localmente e reaplicar os comandos acima para testar outros programas Lisp.

---

Este README serve como guia para iniciar o comando do Docker e rodar os códigos
Lisp neste ambiente de desenvolvimento simples.
