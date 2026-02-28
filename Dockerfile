FROM alpine:latest

# Instalando dependências (exemplo: curl, git e vim)
RUN apk update && apk add --no-cache \
    vim \
    bash \
    clisp 

# Comando para manter o container vivo
CMD ["tail", "-f", "/dev/null"]