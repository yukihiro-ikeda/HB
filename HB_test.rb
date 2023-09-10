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
    bite_bank = []
    while next_game == true
      player_number = player.number_split
      enemy_number = rand(999).to_s.chars
      # binding.irb
      player_number.each do |n|
        if enemy_number.include?(n)
          bite_bank.push(n)
          # puts "1Hit"
          next_game = false
        else
          next_game = true
        end
    end
    # binding.irb
  end
end

HB.start

# class Temporary_result


# ----------------
# eat判定メソッド/下記にテスト記述
# 判定パターン
# 0eat0bite
# 0eat1bite
# 0eat2bite
# 0eat3bite
# 1eat0bite
# 1eat1bite
# 1eat2bite
# 2eat0bite
# 2eat1bite

# /*判定Flow*/
# 先にeat判定
# elseの場合
# bite判定

# eat = []

# 3eat   if enemy_number[0] == player_number[0] && enemy_number[1] == player_number[1] && enemy_number[2] == player_number[2] 
# 2eat   if enemy_number[0] == player_number[0] && enemy_number[1] == player_number[1] /01
# 2eat   if enemy_number[0] == player_number[0] && enemy_number[2] == player_number[2] /02
# 2eat   if enemy_number[1] == player_number[1] && enemy_number[2] == player_number[2] /12
# 2eat   if enemy_number[1] == player_number[1] && enemy_number[3] == player_number[3] /13

# 1eat      
#   elsif enemy_number[0] == player_number[0] && enemy_number[1] == player_number[1]


# def build
#   p1 = gets.chomp.chars
#   player = {"0" => p1[0],"1" => p1[1],"2" => p1[2]}
#   com = rand(999),to_s.chars
#   enemy = {"0" => com[0],"1" => com[1],"2" => com[2]}
#   eat_bank = []
#   bite_bank = []
#   if player == enamy
#     puts "3eat"
#   elsif player["0"] == enemy["0"] && player["1"] == enemy["1"]
#     eat_bank.push(player["0"],player["1"])

# /*Biteの数格納変数*/
# Bite_count =

# /*Eatの数格納変数*/
# Eat_count =

# /*臨時結果出力*/
# puts #{}+"Eat"#{}+"Bite"

# /*勝利結果出力*/
# puts "3Eat"

# /*COM勝利出力*/
# puts "COMの勝利"



# me = -> (y) {y * 3}
# me[4]