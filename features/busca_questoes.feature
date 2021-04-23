#language:pt

Funcionalidade: Busca no Banco de Questões

    @questao1
    Cenário: Busca por questão inexistente
        Dado que navego para a página de busca do banco de questões
        E digito <texto_busca> no campo de busca
        Quando clico no botão de buscar
        Então visualizo uma mensagem de erro com o texto <mensagem>

        Exemplos:
        |texto_busca         | mensagem                |
        |"Science: Computers"|"No questions a found."    |

    @questao2_3
    Esquema do Cenário: Busca por questão existente
        Dado que navego para a página de busca do banco de questões
        E digito <categoria> no campo tipo
        E digito <texto_busca> no campo de busca
        Quando clico no botão de buscar
        Então devo validar listagem de questoes com <total_itens>
        E exibicao do controle da pagina <sim_nao>
        
        Exemplos:
        |categoria  | texto_busca                                          |total_itens| sim_nao|
        |"Category" | "Science: Computers"                                 |  24       | "Sim"  |
        |"Question" | "Which studio made Cowboy Bebop?"                    |   1       | "Não"  |
        |"Question" | "Who is the founder of Palantir?"                    |   1       | "Não"  |
        |"Question" | "Who is the lead singer of Arctic Monkeys?"          |   1       | "NÃO"  |
        |"Question" | "In Splatoon 2, who are the members of Off The Hook?"|   1       | "nÃo"  | 