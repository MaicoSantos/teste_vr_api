# language: pt 

Funcionalidade: Remover Letras após simbolos

@letras
Esquema do Cenario: Remover Letras de uma string após passar simbolos em um array

Dado a string de entrada "<Frase>"
E os marcadores "<Simbolos>"
Então a saída esperada é: "<Retorno>"

Exemplos:
    | Frase                                            | Simbolos             | Retorno                       |
    | bananas, tomates # e ventiladores                | [“#”, “!”]           | bananas, tomates              |
    | o rato roeu a roupa $ do rei % de roma           | [“%”, “!”]           | o rato roeu a roupa $ do rei  |
    | the quick brown fox & jumped over * the lazy dog | [“&”, “*”, “%”, “!”] | the quick brown fox           |