class Menu
  def initialize
    @controller = PersonsController.new
    
    @options = {
      1 => { label: 'Cadastrar pessoa', action: -> { @controller.fetch_person  } },
      2 => { label: 'Calcular IMC', action: -> { @controller.input_imc  } },
      3 => { label: 'Calcular Pam', action: -> { @controller.input_pam  } },
      4 => { label: 'Exibir informações', action: -> { @controller.display_person  } },
      5 => { label: 'Sair', action: -> { end_app }  }
    }
    
    @options.default =  { action: -> { puts "Opção inválida.\n" } } 
  end

  def show_options
    puts 'Digite uma das opções abaixo:'
    
    @options.each { |option| puts "#{option.first}.#{option.last[:label]}" }
  end

  def select_option
    @option = gets.chomp.to_i

    @options[@option][:action].call
  end

  def end_app
    puts "saindo..."
    exit
  end
end
