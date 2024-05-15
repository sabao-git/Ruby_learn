# ユーザーに当選番号の入力を促す
print "当選番号を入力してください (100000 から 199999 の範囲): "
b = gets.chomp.to_i

# ユーザーに購入した宝くじの枚数の入力を促す
print "購入した宝くじの枚数を入力してください (1 から 100 の範囲): "
n = gets.chomp.to_i

# 宝くじ券の番号を入力するための配列を初期化
tickets = []

# ユーザーに各宝くじ券の番号の入力を促す
n.times do |i|
  print "#{i + 1}枚目の宝くじ券の番号を入力してください (100000 から 199999 の範囲): "
  tickets << gets.chomp.to_i
end

# 結果を保持する配列
results = []

# 前後賞の番号を計算
adjacent_numbers = []
adjacent_numbers << (b - 1) if b > 100000
adjacent_numbers << (b + 1) if b < 199999

# 各チケットに対して判定を行う
tickets.each do |ticket|
  if ticket == b
    results << "first"
  elsif adjacent_numbers.include?(ticket)
    results << "adjacent"
  elsif ticket % 10000 == b % 10000
    results << "second"
  elsif ticket % 1000 == b % 1000
    results << "third"
  else
    results << "blank"
  end
end

# 結果をフォーマットに従って出力
results.each_with_index do |result, index|
  puts "#{index + 1}枚目の結果は #{result} です。"
end
