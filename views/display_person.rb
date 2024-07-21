class DisplayPerson
  def initialize(person)
    @person = person
  end

  def display_person
    puts "Informações de #{@person.nome}"
    puts "Nome: #{@person.nome}"
    puts "Email: #{@person.email}"
  
    puts "Peso (kg): #{@person.weight}"
    puts "Altura (m): #{@person.height}"
  
    imc_value = @person.calculate_imc
    puts "IMC: #{imc_value}"
  
    puts "PAS: #{@person.pas}"
    puts "PAD: #{@person.pad}"
  
    pam_value = @person.calculate_pam
    puts "PAM: #{pam_value}"
  end
end
