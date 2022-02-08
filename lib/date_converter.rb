class DateConverter
  def to_text(day, month, year)
    if day.to_s.length == 1
      day = "0#{day.to_s}"
    end

    "#{day} #{month} #{year}"
  end
end