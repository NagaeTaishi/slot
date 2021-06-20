bankroll = 1000

puts "バンクロール：#{bankroll}"
puts "ベット金額を指定してください。"
puts "-------------------"
while bankroll > 0
    bet = gets.chomp
    bet_q = bet.to_i
    
    if  bet_q <= bankroll and bet_q >=10
        puts "-------------------"
        puts "あなたは、#{bet_q}をベットしました。"
        puts "enterを3回続けて押してください。"
        puts "-------------------"
        bankroll -= bet_q
        
        enter = gets.chomp
        if enter == ""
            array1 = ["", "", ""]
            array2 = ["", "", ""]
            array3 = ["", "", ""]
            random = Random.new()
            slotnumber = random.rand(0..9)
            array1[0] = slotnumber
            
            random = Random.new()
            slotnumber = random.rand(0..9)
            array2[0] = slotnumber
            
            random = Random.new()
            slotnumber = random.rand(0..9)
            array3[0] = slotnumber
            
            puts "|#{array1[0]}|||"
            puts "|#{array2[0]}|||"
            puts "|#{array3[0]}|||"
            puts "-------------------"
            
            enter = gets.chomp
            if enter == ""
                random = Random.new()
                slotnumber = random.rand(0..9)
                array1[1] = slotnumber
                random = Random.new()
                slotnumber = random.rand(0..9)
                array2[1] = slotnumber
                random = Random.new()
                slotnumber = random.rand(0..9)
                array3[1] = slotnumber
                puts "|#{array1[0]}|#{array1[1]}||"
                puts "|#{array2[0]}|#{array2[1]}||"
                puts "|#{array3[0]}|#{array3[1]}||"
                puts "-------------------"
                
                enter = gets.chomp
                if enter == ""
                    random = Random.new()
                    slotnumber = random.rand(0..9)
                    array1[2] = slotnumber
                    random = Random.new()
                    slotnumber = random.rand(0..9)
                    array2[2] = slotnumber
                    random = Random.new()
                    slotnumber = random.rand(0..9)
                    array3[2] = slotnumber
                    puts "|#{array1[0]}|#{array1[1]}|#{array1[2]}|"
                    puts "|#{array2[0]}|#{array2[1]}|#{array2[2]}|"
                    puts "|#{array3[0]}|#{array3[1]}|#{array3[2]}|"
                    puts "-------------------"
                    
                    case_pattern =""
                    if array1[0] == array1[1] and array1[1]== array1[2]
                        case_pattern = "column"
                    end    
                    if array2[0] == array2[1] and array2[1]== array2[2]
                        case_pattern = "column"
                    end
                    if array3[0] == array3[1] and array3[1]== array3[2]
                        case_pattern = "column"
                    end
                    if array1[0] == array2[0] and array2[0]== array3[0]
                        case_pattern = "record"
                    end
                    if array1[1] == array2[1] and array2[1]== array3[1]
                        case_pattern = "record"
                    end
                    if array1[2] == array2[2] and array2[2]== array3[2]
                        case_pattern = "record"
                    end
                    
                    case case_pattern
                        when "column"
                            puts "おめでとう。数字が横に揃いました。"
                            reward = bet_q * 15
                            puts "払い戻しは#{reward}です。"
                            bankroll += reward
                        when "record"
                            puts "おめでとう。数字が縦に揃いました。"
                            reward = bet_q * 15
                            puts "払い戻しは#{reward}です。"
                            bankroll += reward
                    else
                        puts "残念、ハズれました。"
                    end
                    puts "バンクロール：#{bankroll}"
                end    
            end
        end

    elsif bet_q <=9
        puts "-------------------"
        puts "10以上をベットしてください。"
        puts "-------------------"
    elsif bet_q > bankroll
        puts "-------------------"
        puts "ベット額はバンクロールの数値以下で指定してください。"
        puts "バンクロール：#{bankroll}"
        puts "-------------------"
    else 
        puts "ベット額を数値で入力してください。"
    end
end
puts "あなたは破産しました。"
puts "ゲームを終了します。"





