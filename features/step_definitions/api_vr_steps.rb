Dado('que eu faça a requisição da API de consulta') do
    @vr_page = Vr.new
    @response = @vr_page.pesquisa_vr()
  end
  
  Então('a API deve retornar o status code {int} e o tipo de estabelecimento') do |int|
    expect(@response.code).to eq(int)
    expect(@response).to have_key('typeOfEstablishment')
    
    puts "CODE:  #{@response.code}"
    puts "Key: #{@response.parsed_response['typeOfEstablishment'][0]['key']}"
    puts "name: #{@response.parsed_response['typeOfEstablishment'][0]['name']}"
    puts "label: #{@response.parsed_response['typeOfEstablishment'][0]['label']}"

  end