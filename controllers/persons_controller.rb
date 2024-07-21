class PersonsController
  attr_reader :person

  def initialize
    @person = Person.new
  end

  def fetch_person
    puts "Digite seu nome:"
    @person.nome = gets.chomp

    puts "Digite seu email:"
    @person.email = gets.chomp

    puts "Cadastrado com sucesso!"
  end

  def display_person
    display_person = DisplayPerson.new(@person)
    display_person.display_person
  end

  def input_imc
    puts "Digite seu peso (kg):"
    @person.weight = gets.chomp.to_f

    puts "Digite sua altura (m):"
    @person.height = gets.chomp.to_f

    imc_value = @person.calculate_imc
    if imc_value
      puts "Seu IMC é: #{imc_value}"
    else
      puts "Não foi possível calcular o IMC. Verifique os valores fornecidos."
    end
  end

  def input_pam
    puts "Digite seu PAS:"
    @person.pas = gets.chomp.to_f

    puts "Digite seu PAD:"
    @person.pad = gets.chomp.to_f

    pam_value = @person.calculate_pam
    if pam_value
      puts "Sua Pressão Arterial Média (PAM) é: #{pam_value}"
    else
      puts "Não foi possível calcular a PAM. Verifique os valores fornecidos."
    end
  end
end
