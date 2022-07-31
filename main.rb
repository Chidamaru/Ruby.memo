require "csv"
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
memo_type = gets.to_i

if memo_type == 1
    puts "拡張子を除いたファイルを出力しください"
    file_name = gets.chomp
    
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl＋Dを押します"
    text = STDIN.readlines
    
    CSV.open("#{file_name}.csv","w") do |csv|
        csv << [text]
    end
    
    
elsif memo_type == 2
        puts "既存のメモを編集します。拡張子を除いた既存ファイル名を入力してください。"
        file_name = gets.chomp
        
        puts "メモしたい内容を記入してください"
        puts "完了したらCtrl＋Dを押します"
        text = STDIN.readlines
        
        CSV.open("#{file_name}.csv","a") do |csv|
          csv << [text]
        end
    

end
