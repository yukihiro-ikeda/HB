def style
  com = [*"0".."9"].sample(3)
  while 
    io = gets.chomp.chars

    hit_tmp = []
    blow_tmp = []
    for i in 0..2 do
      if io[i] == com[i]
        hit_tmp.push(i)
      elsif com.include?(io[i])
        blow_tmp.push(i)
      end
    end
    if hit_tmp.length == 3
      puts "当てました"
      puts "COM's Numberは#{com.map(&:to_i)}です"
      # p com
      break
    else
      puts "#{hit_tmp.length}hit,#{blow_tmp.length}blow"
      # p com
    # binding.irb
    end
  end
end

style

