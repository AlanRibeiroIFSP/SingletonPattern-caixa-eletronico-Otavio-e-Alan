#<p align="center">RESUMO WEBSERVICE</p>     

<h4><p>
Este projeto é baseado em Padrões de Projetos (Design Patterns) chamado Singleton. O Padrão Singleton tem como definição garantir que uma classe tenha apenas uma instância de si mesma e que forneça um ponto global de acesso a ela.
</p><p>
A comunicação entre é realizada através de sockets java disponibilizadas para serem usadas por nós no pacote java.net.
<p>
Possui um banco de dados MySQL, tendo como base um cliente e um servidor para demonstrar foi utilizado dois projeto. O primeiro projeto (ServerSocket) é o server ou servidor que recebe várias soluções e através dele são feitas as queries com as operações do banco de dados.
O segundo projeto (CaixaEletronico) é a parte cliente, caracterizada com o padrão de projeto Singleton. Detalhando o processo de envio dos dados entre cliente e servidor foi inserido o JSON, ele é um formato de representação de dados baseado na linguagem de programação Javascript, simplificando chave e valor, sendo um dos formatos mais utilizados para comunicação entre serviços web (webservices).
</p>
</h4>


<p align="center">Passo a passo para o funcionamento do projeto</p>
<h4>
1 Passo: Instalar um servidor web, neste projeto foi utilizado o Xampp que fornece um pacote com banco de dados servidor e Apache e entre outros.

2Passo: Criação do banco de dados, ao fazer o download dos arquivos disponíveis aqui neste projeto existe um chamado dbcaixaeletronico.sql,  é através deste que será realizado a criação do banco, através do phpmyadmin disponível no Xampp, para isso o usuário deve criar o banco com o título  de dbcaixaeletronico em seguida importe o arquivo com extensão .sql.

3 Passo: como este projeto não está compilado é necessário que rode ele no netbeans IDE de desenvolvimento de projetos java, sendo necessários todos os requisitos exigidos para tal funcionalidade.
</h4>
