# Script para a criação e configuração do servidor Proxy Squid

Este script foi criado para fins didáticos, caso venha da algum problema como: desistelação sem querer, corrompimento de ISO, tenha uma forma mais automática de instalar, criar, e configurar o Server Proxy Squid.


## Explicação do Script

- Verificação de Instalação: O script verifica se o Squid está instalado. Se não estiver, ele instala automaticamente.
- Escolha da Porta: O usuário é solicitado a escolher uma das portas recomendadas (3128, 8080, 8888, ou 8000). Se a entrada for inválida, a porta padrão 3128 será utilizada.
- Configuração do Squid: O script altera a configuração do Squid para usar a porta escolhida e permite acesso a todos.
- Reinício do Serviço: Após as alterações, o serviço do Squid é reiniciado para aplicar as novas configurações.
- Confirmação: O script exibe uma mensagem confirmando que o servidor proxy foi configurado com sucesso.

## Instalação e Execução

## Clone o repositório

```bash
  git clone https://github.com/Rodrigo-Kelven/Configura-o_Proxy-Squid
```
    
## Entre no diretório do projeto e de a permissão

```bash
  cd Configura-o_Proxy-Squid
  chmod +x config_proxy_squid.sh
```

## Inicie o servidor

```bash
  ./config_proxy_squid.sh
```


# Contribuições

Contribuições são bem-vindas! Se você tiver sugestões ou melhorias, sinta-se à vontade para abrir um issue ou enviar um pull request.

## Melhorias

- Ao instalado, execute de forma automática.
- Implementar melhores práticas de segurança


## Autores

- [@Rodrigo_Kelven](https://github.com/Rodrigo-Kelven)
