class Player
  def number_split
    num = gets.chomp
    a = num.chars
  end
end

class HB
  def self.start
    player = Player.new
    next_game = true
    # bank = []
    while next_game == true
      player_number = player.number_split
      enemy = rand(999).to_s.chars
      # binding.irb
      if player_number[0] == enemy[0]
        puts "1Hit"
        next_game = false
      else
        next_game = true
      end
    end
    # binding.irb
  end
end

HB.start

# me = -> (y) {y * 3}
# me[4]