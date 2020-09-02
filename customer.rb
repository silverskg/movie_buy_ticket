class Customer
  attr_accessor :name, :money

  def poket_money
    puts "#{name}の全財産・・・#{money}円"
  end

  def initialize(name, money)
    @name, @money, @ticket = name, money
  end

  def choose_movie
    selected_num = gets.chomp.to_i 
    if selected_num < 0 
      puts "該当プランが見つかりません" 
      return
    end
  end

  def time_movie
    gets.to_i
  end

  def buy(ticket_vending_machine)
    ticket_vending_machine.display_menu
    choosed_movie = ticket_vending_machine.movies[choose_movie]
    puts "#{choosed_movie[:title]}ですね"
    print "何枚購入しますか？>"
    people = gets.chomp.to_i
    sum = choosed_movie[:fee] * people
    puts "合計金額は#{sum}円になります。
    [1]はい：[2]いいえ"
    print "購入されますか？"
    input = gets.chomp.to_i
      if input == 1
        self.money -= sum
        puts "#{choosed_movie[:title]}のチケットを#{people}枚買ったよ"
        puts "#{name}の所持金が#{money}円になりました"
      elsif input == 2
        self.buy(ticket_vending_machine)
      else
        puts "入力された値は無効です"
        return
      end
  end

  def date_menu(ticket_vending_machine)
    ticket_vending_machine.display_time
    input = gets.to_i
      if input == 0
        self.buy(ticket_vending_machine)
      else
        puts "入力された値は無効です"
        return
      end
  end
end

