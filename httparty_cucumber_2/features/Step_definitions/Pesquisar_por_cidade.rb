#encoding: UTF-8
Quando('gerar uma requisição do tipo get com {string} e {string}') do |nome_cidade, key|
  @request_cidade = cidade.get_cidade_nome(nome_cidade, key)
end

Então('o retorno da requisição deve ser {int}') do |retorno|
  expect(@request_cidade.code).to eq(retorno)
end
  
Então('o clima e coordenadas em formato Json') do
  puts JSON.pretty_generate(JSON.parse(@request_cidade.body))
end


Quando('gerar uma requisição com {string} e {string}') do |zip_code, key|
  @request_zip = cidade.get_cidade_cep(zip_code, key)
end

Então('o retorno da requisição deverá ser {float}') do |retorno|
  expect(@request_zip.code).to eq(retorno)
  end

Então('o clima e coordenadas deverão vir em formato Json') do
  puts JSON.pretty_generate(JSON.parse(@request_zip.body))
  end



Quando('gerar uma requisição do tipo get com os critérios {string} {string} e {string}') do |lat, lon, key|
  @request_lat_lon = cidade.get_cidade_lat_lon(lat, lon, key)  
  end

Então('deverá retornar {float}') do |retorno|
  expect(@request_lat_lon.code).to eq(retorno)
  # Então('deverá retornar {float}') do |float|
    end
Então('as informções de clima e coordenadas em formato Json') do
  puts JSON.pretty_generate(JSON.parse(@request_lat_lon.body)) 
  end


