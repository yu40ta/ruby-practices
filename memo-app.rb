def make_memo
	print "メモのタイトルを入力してください→"
	title = gets.chomp
	print "メモの本文を入力してください→"
	content = gets.chomp
	memo = {"タイトル" => title,"本文" => content}
end

def show_memos(memos)
	memos.each do |memo|
		puts memo["タイトル"] + ":" + memo["本文"]
	end
end

memos = []

while true
	puts "【モードを選択してください】"
	puts "【add】メモを追加する"
	puts "【show】メモを確認する"
	print "addまたはshowと入力してください→"
	mode = gets.chomp

	if mode == "add"
		puts "【メモ追加モードを選択しました】"
		memos.push(make_memo)
	elsif mode == "show"
		puts "【メモ確認モードを選択しました】"
		show_memos(memos)
		puts ""
	else
		puts "error"
	end
end
