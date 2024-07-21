class Menu
  def initialize
    @controller = PersonsController.new
    
    @options = {
        1 => -> { @controller.fetch_person }, 
        2 => -> { @controller.input_imc }, 
        3 => -> { @controller.input_pam }, 
        4 => -> { @controller.display_person }, 
        5 => -> { end_app }
      }

    @options.default = -> { puts "Opção inválida.\n" }
  end

  def show_options
    puts 'Digite uma das opções abaixo:'
    puts '1. Cadastrar Pessoa'
    puts '2. Calcular IMC'
    puts '3. Calcular PAM'
    puts '4. Exibir Informações'
    puts '5. Sair'
  end


  def select_option
    @option = gets.chomp.to_i

    @options[@option].call
  end
end
