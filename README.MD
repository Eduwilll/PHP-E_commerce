# E-commerce de Componentes Eletrônicos

## Sobre
Projeto desenvolvido como requisito para cumprimento da disciplina Laboratório de Banco de Dados. Este projeto é um E-commerce de venda de componentes eletrônicos escrito em PHP e usando tecnologias como MySQL, CRUD, SESSION, Painel Admin e integração com o serviço de pagamento PayPal.

## Funcionalidades
- Cadastro e login de usuários
- Navegação e busca de produtos
- Adição de produtos ao carrinho de compras
- Processo de checkout e pagamento via PayPal
- Painel administrativo para gestão de produtos, pedidos e usuários

## Tecnologias Utilizadas
- PHP
- MySQL
- CRUD (Create, Read, Update, Delete)
- Sessões (SESSION)
- Painel Administrativo (Admin Dashboard)
- Integração com PayPal

## Requisitos
- PHP 7.4 ou superior
- MySQL 5.7 ou superior
- Servidor Web (Apache, Nginx, etc.)
- Composer (para gerenciamento de dependências)

## Instalação
1. Clone o repositório:
   ```bash
   git clone https://github.com/Eduwilll/PHP-E_commerce.git
   cd PHP-E_commerce
2. Importe o banco de dados:

   
   Importe o arquivo `phpstore.sql` da pasta sql file para o seu servidor MySQL.
 
3. Inicie o servidor:
- Para o Apache, copie os arquivos do projeto para o diretório raiz do servidor (ex: `/var/www/html`).
- Para o PHP embutido, execute:
   ```bash
   php -S localhost:8000