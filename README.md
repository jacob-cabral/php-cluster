O repositório 'php-cluster' tem o propósito de prover a infraestrutura necessária à execução de aplicações PHP com alta disponibilidade, balanceamento de carga, replicação de sessão e criptografia dos dados transmitidos.

A execução do servidor Apache tem como prerrequisitos as criações da chave privada e do certificado digital usado na configuração do HTTPS. Para facilitar tais criações, foi disponibilizado o arquivo de script 'init/criar-chave-e-certificado.sh'. É necessário acessar o diretório 'init' para executar com sucesso o script.

Finalmente, para iniciar os serviços, basta executar o comando: docker-compose up