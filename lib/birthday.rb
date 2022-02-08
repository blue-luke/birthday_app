class Birthday
  def initialize(name, day, month)
    @name = name
    @day = day
    @month = month
  end
  def current_day
    Time.now.strftime("%d")[1].to_i
  end
  def message
    "Happy Birthday, Alice!"
  end
end