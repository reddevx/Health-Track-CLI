class DisplayPerson
  def initialize(person)
    @person = person
  end

  def display
    puts "Informações de #{@person.nome}"
    puts "Nome: #{@person.nome}"
    puts "Email: #{@person.email}"
    puts "Peso (kg): #{@person.weight}"
    puts "Altura (m): #{@person.height}"
    puts "IMC: #{@person.imc}"
    puts "PAS: #{@person.pas}"
    puts "PAD: #{@person.pad}"
    puts "PAM: #{@person.pam}"
  end
end
