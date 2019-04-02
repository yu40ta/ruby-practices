
# レビュー管理アプリ
#メソッドの定義
def post_review(a_posts)
  #変数の定義
  post = {}
  puts "ジャンルを入力してください"
  post[:genre] = gets.chomp
  puts "タイトルを入力してください"
  post[:title] = gets.chomp
  puts "感想を入力してください"
  post[:review] = gets.chomp
  border = "---------------"

  #レビューの描画
  puts "ジャンル : #{post[:genre]}\n#{border}"
  puts "タイトル : #{post[:title]}\n#{border}"
  puts "感想 : \n#{post[:review]}\n#{border}"

  #配列オブジェクトに追加
  a_posts << post

  #a_postsをメソッドの呼び出し元に返す
  return a_posts
end

def read_reviews(a_posts)
  number = 0
  a_posts.each do |post|
    puts "[#{number}]: #{post[:title]}のレビュー"
    number = number + 1
  end

  puts "見たいレビューの番号を入力してください"
  input = gets.to_i

  #レビューの取得
  post = a_posts[input]

  #レビューの描画
  border = "---------------"
  puts "ジャンル : #{post[:genre]}\n#{border}"
  puts "タイトル : #{post[:title]}\n#{border}"
  puts "感想 : \n#{post[:review]}\n#{border}"
end

def end_program
  exit
end

def exception
  puts "入力エラーです。0か1か2を入力してください。"
end

posts = []

while true do
  puts "レビュー数：#{posts.length}"
  puts "[0]レビューを書く"
  puts "[1]レビューを読む"
  puts "[2]アプリを終了する"
  num = gets.to_i

  if num == 0
    posts = post_review(posts)
  elsif num == 1
    if posts.length > 0
      read_reviews(posts)
    else
      puts "レビューがありません"
    end
  elsif num == 2
    end_program
  else
    exception
  end
end

# バックスラッシュ記法
# \n 改行 puts = ""の代わりになる
# \t タブ
# \b バックスペース
# \\ バックスラッシュ

# 変数はソースコード内で繰り返し使う値や文字列に使用する
# {変数や式}は式展開といいコードの省略に役立つ
