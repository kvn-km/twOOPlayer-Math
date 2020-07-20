class Numbers
  attr_accessor :number1, :number2, :answer
  def initialize
    @number1 = rand(1...10)
    @number2 = rand(1...10)
    @answer = number1 + number2
  end
end