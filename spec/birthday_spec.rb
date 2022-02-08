require 'birthday'

describe 'Birthday' do
  it 'tells you if your birthday is today' do
    b = Birthday.new("Alice", 8, "February")
    # allow(Date).to receive_message_chain(:today, :strftime).with("%B").and_return("February")
    # allow(Time).to receive_message_chain(:now, :strftime).with("%d").and_return("08")
    allow(Date).to receive(:today).and_return #<Date: 2022-02-08 ((2459619j,0s,0n),+0s,2299161j)>
    p "See below"
    p b.closest_birthday
    p b.next_birthday
    p Date.new
    p Date.today
    p Date.today == b.closest_birthday
    expect(b.message).to eq "Happy Birthday, Alice!"
  end
  it 'tells you current month' do
    b = Birthday.new("Jane", 9, "February")
    allow(Date).to receive_message_chain(:today, :strftime).with("%B").and_return("February")
    expect(b.current_month).to eq "February"
  end
  it 'tells you current day' do
    b = Birthday.new("Jane", 9, "February")
    allow(Time).to receive_message_chain(:now, :strftime).with("%d").and_return("09")
    expect(b.current_day).to eq 9
  end
  it 'tells you if your birthday is one day away' do
    b = Birthday.new("Jane", 9, "February")
    allow(Date).to receive_message_chain(:today, :strftime).with("%B").and_return("February")
    allow(Time).to receive_message_chain(:now, :strftime).with("%d").and_return("08")
    expect(b.message).to eq "Your birthday is in 1 days, Jane"
  end
  it 'tells you if your birthday is two days away, within same month' do
    b = Birthday.new("Jane", 10, "February")
    allow(Date).to receive_message_chain(:today, :strftime).with("%B").and_return("February")
    allow(Time).to receive_message_chain(:now, :strftime).with("%d").and_return("08")
    expect(b.message).to eq "Your birthday is in 2 days, Jane"
  end
  # it 'tells you if your birthday is 31 days away, across a month' do
  #   b = Birthday.new("Jane", 10, "April")
  #   allow(Date).to receive_message_chain(:today, :strftime).with("%B").and_return("March")
  #   allow(Time).to receive_message_chain(:now, :strftime).with("%d").and_return("10")
  #   expect(b.message).to eq "Your birthday is in 31 days, Jane"
  # end
end