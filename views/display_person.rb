require_relative '../models/info'

class DisplayInfo
  def initialize(info)
    @info = info
  end

  def display_info
    puts "Informações de #{@info.nome}"
    puts "Nome: #{@info.nome}"
    puts "Email: #{@info.email}"
  
    puts "Peso (kg): #{@info.weight}"
    puts "Altura (m): #{@info.height}"
  
    imc_value = @info.calculate_imc
    puts "IMC: #{imc_value}"
  
    puts "PAS: #{@info.pas}"
    puts "PAD: #{@info.pad}"
  
    pam_value = @info.calculate_pam
    puts "PAM: #{pam_value}"
  end
end
