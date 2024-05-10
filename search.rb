puts "検索ワードの数 N を入力してください:"

n = gets.to_i 
history = []

n.times do
  puts "検索ワードを入力してください:"
  word = gets.chomp  

  history.delete(word)
  
  history.unshift(word)
end

puts "検索履歴:"
history.each do |word|
  puts word
end