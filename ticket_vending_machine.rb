class TicketVendingMachine
  require 'date'
  require './movie'

  def movies
    @movie = [
       {title: "ワイルドスピード", fee: 2000, start_date: Date.today.prev_month(1), end_date: Date.today.next_day(5)},
       {title: "遊戯王", fee: 1500, start_date: Date.today - 1, end_date: Date.today.next_month(2)},
       {title: "ワンピース", fee: 1800, start_date: Date.today - 5, end_date: Date.today.next_month(1)}, 
       {title: "もののけ姫", fee: 1400, start_date: Date.today - 10, end_date: Date.today.next_month(3)} 
      
  ]
  end

  def display_menu
    self.movies.each.with_index(1) do |movie,num|
      puts "#{num}.#{movie[:title]}: #{movie[:fee]}円"
    end
    print "どの映画を見ますか？>"
  end

  def display_time
    puts "上映中の映画"
    self.movies.each.with_index(1) do |movie,num|
      puts "#{num}.#{movie[:title]}：#{movie[:start_date]}~#{movie[:end_date]}"
    end
    print "[0]チケットを購入する>"
  end

  # def display_result(customer)
  #   choosed_movie = self.movies[customer.choose_movie]
  #   customer.money -= choosed_movie.fee
  #   puts "#{choosed_movie.title}のチケットを買ったよ！"
  #   puts "#{customer.name}の所持金が#{customer.money}円になりました！"
  # end

  def end_program
    exit
  end

end