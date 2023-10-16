def style
  io = gets.chomp.chars
  com = [*"0".."9"].sample(3)
  hit_tmp = []
  blow_tmp = []
  for i in 0..2 do
    if io[i] == com[i]
      hit_tmp.push(i)
    elsif com.include?(io[i])
      blow_tmp.push(i)
    end
  end
  puts "#{hit_tmp.length}hit,#{blow_tmp.length}blow"
  p com
  # binding.irb
end

style

