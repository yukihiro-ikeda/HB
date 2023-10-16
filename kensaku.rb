def iii(ar)#配列を渡すメソッド
  puts "検索したい番号を入力してください"
  snum= gets.to_i
  unless ar.index(snum)
    puts "存在しません"
  else
    exin = ar.index(snum)
    puts ar[exin]
    puts "検索対象配列のインデックス番号[#{exin}]に存在します"
  end
end

