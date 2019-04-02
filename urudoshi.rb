def get_days(year, month)
  # 配列で月ごとの日数をまとめる
  month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  if month == 2
    if year % 4 == 0
      # 閏年の可能性がある
      if year % 100 == 0 && year % 400 != 0
          days = 28
      else
          days = 29
      end
    else
      days = 28
    end
  else
    days = month_days[month - 1]
  end

  return days
end

  puts "年を入力してください："
  year = gets.to_i
  puts "月を入力してください："
  month = gets.to_i

  days = get_days(year, month)
  puts "#{year}年#{month}月は#{days}日間あります"
