puts "検索ワードの数 N を入力してください:"
n = gets.to_i  # 検索ワードの数 N を入力

# 検索履歴を管理する配列
history = []

# N 回の検索ワード入力を受け取る
n.times do
  puts "検索ワードを入力してください:"
  word = gets.chomp  # 検索ワードを入力
  
  # 履歴から同じワードを削除（存在する場合）
  history.delete(word)
  
  # 履歴の先頭にワードを追加
  history.unshift(word)
end

# 最終的な履歴を出力
puts "検索履歴:"
history.each do |word|
  puts word
end