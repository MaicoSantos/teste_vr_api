Dado('a string de entrada {string}') do |frase|
    @Letras = RemoveLetrasPg.new
    @frase = frase
  end
  
  Dado('os marcadores {string}') do |simbolos|
    @simbolos = simbolos.gsub(/[\[\]\"]/, '').split(',').map(&:strip)
  end
  
  Então('a saída esperada é: {string}') do |retorno|
   result =  @Letras.remover_letras(@frase, @simbolos)
   expect(result).to eq(retorno)
  end