class Customer
  require_relative "ticket_vending_machine.rb"
  attr_accessor :name, :money
  def poket_money
    puts "#{name}の全財産・・・#{money}円"
  end

  def initialize(name, money)
    @name, @money, @ticket = name, money
  end

  def cancel
    puts "該当するプランがありません"
    exit
  end

  def choose_movie_num(ticket_vending_machine)
    selected_num = gets.to_i - 1
    if selected_num < 0 || selected_num > ticket_vending_machine
      cancel
    end
    selected_num
  end

  def time_movie
    gets.to_i
  end

  def buy(ticket_vending_machine)
    ticket_vending_machine.display_menu
    selected_num = choose_movie_num(ticket_vending_machine.movies.size)
    choosed_movie = ticket_vending_machine.movies[selected_num]
    ticket_vending_machine.purchase_screen(choosed_movie)
  
    if $sum < self.money
      puts "購入可能"
    else
      puts "金額が不足している"
      return
    end

    input = gets.chomp.to_i

    if input == 1
      self.money -= $sum
      puts "#{choosed_movie[:title]}のチケットを#{$people}枚買ったよ"
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

