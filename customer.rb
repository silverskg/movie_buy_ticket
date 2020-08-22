class Customer
  attr_accessor :name, :money, :ticket

  def initialize(name, money, ticket=nil)
    @name, @money, @ticket = name, money, ticket
  end

  def choose_movie
    gets.to_i
  end

  def time_movie
    gets.to_i
  end

  def buy(ticket_vending_machine)
    ticket_vending_machine.display_menu
    choosed_movie = ticket_vending_machine.movies[choose_movie]
    puts "何枚購入しますか？"
    people = gets.chomp.to_i
    sum = choosed_movie.fee * people
    puts "合計金額は#{sum}円になります。\n
    購入されますか？\n
    [0]はい：[1]いいえ"
    input = gets.chomp.to_i
      if input == 0
        self.money -= sum
        self.ticket = Ticket.new(choosed_movie)
        puts "#{choosed_movie.title}のチケットを買ったよ"
        puts "#{name}の所持金が#{money}円になりました"
      elsif input == 1
        self.buy(ticket_vending_machine)
      else
        puts "入力された値は無効です"
      end
  end

  def date_menu(ticket_vending_machine)
    ticket_vending_machine.display_time
    puts "[0]チケットを購入する"
    input = gets.to_i
      if input == 0
        self.buy(ticket_vending_machine)
      else
        puts "入力された値は無効です"
      end
  end
end

