class BuscaQuestoes
    include Capybara::DSL

    def TextoBusca
        find("#query")
    end

    def TipoQuestoes (tipo_questao)
        select(tipo_questao, from: 'type')
    end

    def BotaoBuscar
        click_button "Search"
    end

    def MensagemErro
        return find("div[class='alert alert-danger']")
    end

    def ControlePagina?
        return page.has_css?("ul[class='pagination pagination-lg']")
    end

    #expect(page).not_to have_selector("ul[class='pagination pagination-lg']")
end