     class Cidade
        include HTTParty
        base_uri CONFIG['base_uri']

        def get_cidade_nome(nome_cidade, key)
          self.class.get('?q=' + nome_cidade + '&appid=' + key)
        end


        def get_cidade_cep(zip_code, key)
          self.class.get('?zip=' + zip_code + '&appid=' + key)
        end

        def get_cidade_lat_lon(lat, lon, key)
          self.class.get('?lat=' + lat + '&lon=' + lon + '&appid=' + key)
        end
    end
