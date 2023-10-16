module Hit_and_Blow
  module_function
    
  N = 3
  
  def input
    expl = (0...N).to_a.join
    loop do
      print "各桁のそれぞれちがう、#{N}桁の数を入力して下さい（例：#{expl}）: "
      s = gets.chomp.chars
      if s.size != N || s.uniq.size != N || s.any?(/\D/)
        puts "不正な入力です。"
      else
        return s
      end
    end
  end
  
  def judge(target, number)
    overlap = (target & number).size
    hit = target.zip(number).count { |a, b| a == b }
    [hit, overlap - hit]
    binding.irb
  end
  
  def play
    target = [*"0".."9"].sample(N)
    (1..).each do |n|
      number = input
      
      if target == number
        puts "正解です! #{n}回で当てました！"
        break
      else
        hit, blow = judge(target, number)
        puts "ヒット:#{hit}, ブロウ:#{blow}"
      end
    end
  end
end

Hit_and_Blow.play