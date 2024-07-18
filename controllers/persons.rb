require_relative '../models/info'
require_relative '../views/display_info'

class PersonsController
  attr_reader :info

  def initialize
    @info = Info.new
  end

  def fetch_person
    puts "Digite seu nome:"
    @info.nome = gets.chomp

    puts "Digite seu email:"
    @info.email = gets.chomp

    puts "Cadastrado com sucesso!"
  end

  def display_person
    display_info = DisplayInfo.new(@info)
    display_info.display_info
  end

  def input_imc
    puts "Digite seu peso (kg):"
    @info.weight = gets.chomp.to_f

    puts "Digite sua altura (m):"
    @info.height = gets.chomp.to_f

    imc_value = @info.calculate_imc
    if imc_value
      puts "Seu IMC é: #{imc_value}"
    else
      puts "Não foi possível calcular o IMC. Verifique os valores fornecidos."
    end
  end

  def input_pam
    puts "Digite seu PAS:"
    @info.pas = gets.chomp.to_f

    puts "Digite seu PAD:"
    @info.pad = gets.chomp.to_f

    pam_value = @info.calculate_pam
    if pam_value
      puts "Sua Pressão Arterial Média (PAM) é: #{pam_value}"
    else
      puts "Não foi possível calcular a PAM. Verifique os valores fornecidos."
    end
  end
end
