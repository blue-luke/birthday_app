require 'date'

class Birthday
  def initialize(name, day, month)
    @name = name
    @day = day
    @month = month
  end

  def current_day
    day = Time.now.strftime("%d")
    if day[0] = "0"
      day[1].to_i
    else
      day.to_i
    end
  end

  def current_month
    month = Date.today.strftime("%B")
  end

  def birthday_today?
    @day == current_day && @month == current_month
  end

  def message
    if birthday_today?
      "Happy Birthday, #{@name}!"
    else
      "Your birthday is in 1 days, #{@name}"
    end
  end
end