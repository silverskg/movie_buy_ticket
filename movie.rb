class Movie
  def movies
    @movie = [
       {title: "ワイルドスピード", fee: 2000, start_date: Date.today.prev_month(1), end_date: Date.today.next_day(5)},
       {title: "遊戯王", fee: 1500, start_date: Date.today - 1, end_date: Date.today.next_month(2)},
       {title: "ワンピース", fee: 1800, start_date: Date.today - 5, end_date: Date.today.next_month(1)}, 
       {title: "もののけ姫", fee: 1400, start_date: Date.today - 10, end_date: Date.today.next_month(3)} 
      
  ]
  end
end