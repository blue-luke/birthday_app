require 'birthday'

describe 'Birthday' do
  it 'tells you if your birthday is today' do
    b = Birthday.new("Alice", 8, "February")
    expect(b.message).to eq "Happy Birthday, Alice!"
  end
  # it 'tells you if your birthday is tomorrow' do
  #   b = Birthday.new("Jane", 9, "February")
  #   expect(b.message).to eq "Your birthday will be in 1 day, Jane."
  # end
  it 'tells you current day number' do
    b = Birthday.new("Jane", 9, "February")
    expect(b.current_day).to eq 8
  end
end