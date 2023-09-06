class Split
  def number_split
    num = gets.chomp
    a = num.chars
  end
end

class Start
  def self.start
    split = Split.new
    next_game = true
    while next_game == true
      player_number = split.number_split
      enemy = rand(999).to_s.chars
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

Start.start