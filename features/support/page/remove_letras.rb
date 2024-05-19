class RemoveLetrasPg

def remover_letras(string, symbols)
    # Cria uma expressão regular que corresponde a qualquer um dos símbolos no array
    regex = Regexp.union(symbols.map { |symbol| Regexp.escape(symbol) })
    
    # Divide a string no primeiro símbolo encontrado e retorna a parte antes do símbolo
    remove_string = string.split(regex).first
    
    remove_string
  end
end