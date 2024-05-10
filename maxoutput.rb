puts "カンマで区切った整数を入力してください。"

input = gets.chomp

numbers = input.split(",").map(&:to_i)

maxnumber = numbers.max

print "最大値は", maxnumber, "です。\n"