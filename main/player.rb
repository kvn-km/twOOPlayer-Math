class Player (name)
  attr_accessor :name, :hp, :my_turn
  @@current_player = nil
  def initialize(name)
    @name = name
    @hp = 3
    @my_turn = false
    puts "New player created: #{name}!"
  end
end