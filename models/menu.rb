class Menu
  def initialize
    @controller = PersonsController.new
    
    @options = @controller.options

    @options[5] = {label: 'Sair', action: -> { end_app }}
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
