class Menu
  def initialize
    @controller = PersonsController.new
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
    
    case @option
    when 1
      @controller.fetch_person
    when 2
      @controller.input_imc
    when 3
      @controller.input_pam
    when 4
      @controller.display_person
    when 5
      puts "Saindo..."
      exit
    else
      puts "Opção inválida. Tente novamente."
    end
  end
end
