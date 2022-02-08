require 'date'

class Birthday
  attr_reader :closest_birthday, :next_birthday
  def initialize(name, day, month)
    @name = name
    @day = day
    @month = month
    @year = Date.today.year
    @closest_birthday = Date.parse("#{@day}/#{@month}/#{@year}")
    if Date.today < @closest_birthday
      @next_birthday = @closest_birthday
    else
      @next_birthday = Date.parse("#{@day}/#{@month}/#{@year + 1}")
    end
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
    @closest_birthday == Date.today
    # @day == current_day && @month == current_month
  end

  def message
    if birthday_today?
      "Happy Birthday, #{@name}!"
    elsif !birthday_today?
      days_away = @day - current_day
      "Your birthday is in #{days_away} days, #{@name}"
    end
  end
end