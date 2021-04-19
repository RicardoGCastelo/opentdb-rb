Dado('que navego para a página de busca do banco de questões') do
  visit "/browse.php" 
end

Dado('digito {string} no campo de busca') do |busca|
   @Busca_Questoes.TextoBusca.set busca  
end

Dado('digito {string} no campo tipo') do |tipo|
  @Busca_Questoes.TipoQuestoes(tipo)  
end

Quando('clico no botão de buscar') do
  @Busca_Questoes.BotaoBuscar  
end

Então('visualizo uma mensagem de erro com o texto {string}') do |mensagem|
  expect(@Busca_Questoes.MensagemErro.text).to eql mensagem
 end

Então('devo validar listagem de questoes com {int}') do |total_itens|
  
  #Busca o ultimo registro
  ultimo = find("body table tbody tr:last-child")

  #Busca o registro de numero passado por parametro
  registro_total_itens = find("body table tbody tr:nth-child(" + total_itens.to_s + ")")
  
  expect(ultimo.text).to eql registro_total_itens.text
end

Então('exibicao do controle da pagina {string}') do |sim_nao|

  if sim_nao.upcase  == "SIM"
    expect(@Busca_Questoes.ControlePagina?).to be true
  elsif sim_nao.upcase == "NÃO" || sim_nao.upcase == "NAO"
    expect(@Busca_Questoes.ControlePagina?).to be false
  end

end

  

