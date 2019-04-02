def janken
  puts "[0]:グー"
  puts "[1]:チョキ"
  puts "[2]:パー"
  # 入力待ち
  player_hand = gets.to_i
  program_hand = rand(3) #0~2の中から1つ数字をランダムに渡す

  hands = ["グー","チョキ","パー"]
  puts "あなたの手:#{hands[player_hand]}, わたしの手:#{hands[program_hand]}"

  if player_hand == program_hand
    puts "あいこで..."
    return true
  elsif player_hand == (0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです"
    return false
  else
    puts "あなたの負けです"
    puts "もう一度挑戦しますか？"
    puts "[0]はい"
    puts "[1]いいえ"
    num = gets.to_i
      if num == 0
        return true
      elsif num == 1
        return false
      else
        puts "error"
        return false
      end
  end
end

# あいこの時の判定
next_game = true
puts "最初はグー、じゃんけん..."

# じゃんけんの繰り返し
# next_gameにjanken(if判定結果)を返せるようにする
while next_game do
  next_game = janken
end
