require "report_builder"
require "date"

#Primeiro Step antes de todos os cenarios
Before do
    @Busca_Questoes = BuscaQuestoes.new

    #page.driver.browser.manage.window.maximize

    #definição do tamanho minimo de resolução do projeto
    page.current_window.resize_to(1440,900)
end

#ultimo step de cada cenario
#After do
    #if scenario.failed?
#    temp_shot = page.save_screenshot("log/temp_shot.png")
#    screenshot = Base64.encode64(File.open(temp_shot,"rb").read)
    
    #anexa o screenshot no Relatorio
 #   embed(screenshot, "image/png", "Screenshot")
    #end
#end

d = DateTime.now
@current_date = d.to_s.tr(":","-")

at_exit do
    ReportBuilder.configure do |config|
      config.input_path = "log/report.json"
      config.report_path = "log/" + @current_date
      config.report_types = [:html]
      config.report_title = "Open Trivia Database"
      #config.compress_image = true
      config.additional_info = { "App" => "Web", "Data de execução" => @current_date  }
      config.color = "indigo"
    end
    ReportBuilder.build_report
  end