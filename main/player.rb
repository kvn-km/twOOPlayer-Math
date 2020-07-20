class Player (name)
  attr_accessor :name, :hp, :my_turn
  def initialize(name)
    @name = name
    @hp = 3
    @my_turn = false
    puts "New player created: #{name}!"
  end
end