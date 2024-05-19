class Vr
        include HTTParty
      
        def pesquisa_vr()
          url = "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"
          HTTParty.get(url)
        end
      
    
end