require 'birthday'

describe 'Birthday' do
  it 'tells you if your birthday is today' do
    b = Birthday.new("Alice", 8, "February")
    allow(Date).to receive_message_chain(:today, :strftime).with("%B").and_return("February")
    allow(Time).to receive_message_chain(:now, :strftime).with("%d").and_return("08")
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
end