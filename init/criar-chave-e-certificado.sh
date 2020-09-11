#!/bin/bash
# Gerar a chave privada.
openssl genrsa -aes128 -out ../docker/php-fpm/ssl/private/server.key 2048
# Remover a senha da chave privada.
openssl rsa -in ../docker/php-fpm/ssl/private/server.key -out ../docker/php-fpm/ssl/private/server.key
# Gerar a requisição de assinatura de certificado.
openssl req -new -days 3650 -key ../docker/php-fpm/ssl/private/server.key -out ../docker/php-fpm/ssl/certs/server.csr
# Gerar o certificado.
openssl x509 -in ../docker/php-fpm/ssl/certs/server.csr -out ../docker/php-fpm/ssl/certs/server.crt -req -signkey ../docker/php-fpm/ssl/private/server.key -days 3650
# Remover a requisição de assinatura de certificado.
rm -f ../docker/php-fpm/ssl/certs/server.csr