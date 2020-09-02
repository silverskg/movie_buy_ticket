class Movie
  def initialize(title, fee, start_date, end_date)
    @title, @fee, @start_date, @end_date = title, fee, start_date, end_date
  end

  def title
    return @title
  end

  def fee
    return @fee
  end

  def start_date
    return @start_date
  end

  def end_date
    return @end_date
  end
end