def style
  io = gets.chomp.chars
  com = [*"0".."9"].sample(3)
  tmp = []
  for i in 0..2 do
    if io[i] == com[i]
      tmp.push(i)
    end
  end
  puts "#{tmp.length}hit"
  p com
end

style

