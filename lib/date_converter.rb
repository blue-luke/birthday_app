require 'date'

class DateConverter
  def initialize
    @parsed_text = nil
  end
  def to_text(day, month, year)
    if day.to_s.length == 1
      day = "0#{day.to_s}"
    end

    @parsed_text = "#{day} #{month} #{year}"
  end
  def parse_text
    Date.parse(@parsed_text)
  end
  def find_days_between(object1, object2)
    (object1 - object2).to_i
  end
end