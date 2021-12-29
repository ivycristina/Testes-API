# Automações de Testes API do site Openweathermap</p>

Esse projeto implementa os fluxos de automação de api para obter o clima através do site https://openweathermap.org/current.

> Utilizando a stack: Ruby + Cucumber + HTTParty, esse projeto tem o intuito de implementar a automação dos testes para obter o clima através da API https://api.openweathermap.org/data/2.5/weather.

[![Ruby Version][ruby-image]][ruby-url]
[![Cucumber Version][cucumber-image]][cucumber-url]
[![HTTParty Version][httparty-image]][httparty-url]


## Arquitetura do projeto

Toda descrição e explicação sobre a arquitetura do projeto pode ser vista [aqui](https://drive.google.com/drive/u/0/folders/1TgZtpdo3FJ0V23MAdVD8fcjvL1tS6uBM). 


## Execução

Para executar os testes, faça toda a configuração do seu ambiente, e faça o clone do projeto em sua máquina.

* para instalar as dependencias, acesse o diretório do projeto pelo seu console, e execute o comado:

```sh
bundle install
```
* execute o comando abaixo para rodar pelo ambiente, se estiver em homologação use hlg se estiver em produção altere o hlg para prd.

```sh
cucumber -p prd
```

* após concluir a instalação, para executar o teste, execute o comando abaixo, substituindo "@tag" para a tag do teste que você deseja executar que esta em specifications.

```sh
cucumber -t@tag
```

* para gerar o report execute o comado:

```sh
cucumber --format html --out=report.htm
```


[ruby-image]: https://img.shields.io/badge/ruby-2.6.5--1-red
[ruby-url]: https://www.ruby-lang.org/pt/
[cucumber-image]: https://img.shields.io/badge/cucumber-using-brightgreen
[cucumber-url]: https://cucumber.io/
[httparty-image]: https://img.shields.io/badge/httparty-0.18.1-yellow
[httparty-url]: https://rubygems.org/gems/httparty/versions/0.13.7?locale=pt-BR
