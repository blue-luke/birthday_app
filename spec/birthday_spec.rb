require 'birthday'

describe 'Birthday' do
  it 'tells you if your birthday is today' do
    b = Birthday.new("Alice", 8, "February")
    expect(b.message).to eq "Happy Birthday, Alice!"
  end
  it 'tells you current month' do
    b = Birthday.new("Jane", 9, "February")
    allow(Date).to receive_message_chain(:today, :strftime).with("%B").and_return("February")
    expect(b.current_month).to eq "February"
  end
end