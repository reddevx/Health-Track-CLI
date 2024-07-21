class Person
  attr_accessor :nome, :email, :weight, :height, :pas, :pad, :imc, :pam

  def initialize
    @nome = nil
    @email = nil
    @weight = nil
    @height = nil
    @pas = nil
    @pad = nil
    @imc = nil
    @pam = nil
  end

  def calculate_imc
    return nil if @weight.nil? || @height.nil? || @height.zero?
    imc = @weight / (@height ** 2)
    @imc = imc.round(2)
  end

  def calculate_pam
    return nil if @pas.nil? || @pad.nil?
    pam = (@pas + 2 * @pad) / 3.0
    @pam = pam.round(2)
  end
end
