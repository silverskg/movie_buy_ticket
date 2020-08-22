class TicketVendingMachine
  
  def initialize
    @movies = []
  end

  def movies
    @movies
  end

  def movies= (movies)
    @movies = movies
  end

  # def movie_price
    
  #     puts " : #{movies}円"
     

  # end

  def display_menu
    
    puts "どの映画を見ますか？"
    i = 0
    
    self.movies.each do |movie|
      puts "#{i} #{movie.title}: #{movie.fee}円"
      i += 1
    end
  end

  def display_time
    puts "上映中の映画"
    i = 0
    self.movies.each do |movie|
      puts "#{i} #{movie.title}：#{movie.start_date}~#{movie.end_date}"
      i += 1
    end
  end

  def end_program
    exit
  end

end