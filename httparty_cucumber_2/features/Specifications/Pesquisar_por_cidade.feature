#language: pt
#utf-8

@Validar_clima_coordenadas
Funcionalidade: Validar clima e coordenadas

@cidade
  Esquema do Cenário: Validar clima pela cidade
    Quando gerar uma requisição do tipo get com <nome_cidade> e <key>
    Então o retorno da requisição deve ser <retorno>
    E o clima e coordenadas em formato Json
   

     Exemplos:

    |  nome_cidade |  key                                 | retorno|
    | 'New York'   |  'd8861905a878ac2eca57d1b6117cccde'  | 200    |
    | 'California' |  'd8861905a878ac2eca57d1b6117cccde'  | 200    |
    | 'Boston'     |  'd8861905a878ac2eca57d1b6117cccde'  | 200    |

@cep
  Esquema do Cenário: Validar clima pelo cep
    Quando gerar uma requisição com <zip_code> e <key>
    Então o retorno da requisição deverá ser <retorno>
    E o clima e coordenadas deverão vir em formato Json
   

     Exemplos:

    |  zip_code    |  key                                 | retorno|
    | '10005'      |  'd8861905a878ac2eca57d1b6117cccde'  | 200    |
    | '96162'      |  'd8861905a878ac2eca57d1b6117cccde'  | 200    |
    | '05544'      |  'd8861905a878ac2eca57d1b6117cccde'  | 200    |


@coordenadas_geograficas
  Esquema do Cenário: Validar clima pelas coordenadas geográficas
    Quando gerar uma requisição do tipo get com os critérios <lat> <lon> e <key>
    Então deverá retornar <retorno>
    E as informções de clima e coordenadas em formato Json
   

     Exemplos:

    |  lat         |  lon           | key                                  | retorno|
    |  '40.6643'   |  '-73.9385'    |  'd8861905a878ac2eca57d1b6117cccde'  | 200    |
    | '35.1258000' | '-117.9859000' |  'd8861905a878ac2eca57d1b6117cccde'  | 200    |
    | '42.359135'  | '-71.059846'   |  'd8861905a878ac2eca57d1b6117cccde'  | 200    |