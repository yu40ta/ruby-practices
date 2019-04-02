# puts "年齢を入力してください："
# age = gets.to_i

# case age
# when 0..15
#   puts "まだまだお子様ですね"
# when 16..19
#   puts "今しかない時を精一杯駆け抜けてください"
# else
#   puts "あなたは大人ですね"
# end

def birth_input(birth_persons)
  list = {}
  puts "名前（フルネーム）を入力してください："
  list[:name] = gets.chomp
  puts "生まれた年を入力してください："
  list[:year] = gets.to_i
  puts "生まれた月を入力してください："
  list[:month] = gets.to_i
  puts "生まれた日を入力してください："
  list[:day] = gets.to_i
  line = "---------------------------"

  puts "#{list[:name]}さんの生年月日は#{list[:year]}年#{list[:month]}月#{list[:day]}日ですね"
  puts "[0]はい\n[1]いいえ"
  check_num = gets.to_i
   case check_num
     when 0
       puts "リストに追加しました"
        birth_persons << list
        birth_view(birth_persons)
     when 1
       puts "もう一度入力し直してください"
       birth_input(birth_persons)
     else
       puts "入力エラー"
   end
end

def birth_view(view)
  puts "現在の生年月日リスト数[#{view.length}]"
  puts "[0]一覧を表示する\n[1]他の人の生年月日を入力する\n[2]アプリを終了する"
  view_num = gets.to_i
    case view_num
      when 0
        list_view(view)
      when 1
        birth_input(view)
      when 2
        puts "さようなら"
        exit
      else
        puts "入力エラー"
    end
end

def list_view(lists)
  puts "現在入力されている生年月日リストは…"
  id = 0
  lists.each do |list|
    puts "[#{id}]名前:#{list[:name]}さんの生年月日"
    id += 1
  end
  puts "生年月日を見たい人の番号を入力してください"
  person_info(lists)
end

def person_info(detail)
  list_num = gets.to_i
  list = detail[list_num]
  line = "----------------------------"
  puts "#{list[:name]}さんの生年月日は#{list[:year]}年#{list[:month]}月#{list[:day]}日です"
end

persons = []

while true do
  puts "名前と生年月日を入力してください:\n[0]はい\n[1]いいえ"
  answer = gets.to_i
    case answer
    when 0
      birth_input(persons)
    when 1
      puts "さようなら"
      exit
    else
      puts "入力エラーです"
    end
end
