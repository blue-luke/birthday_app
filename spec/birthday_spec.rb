require 'birthday'

describe 'Birthday' do
  it 'tells you if your birthday is today' do
    b = Birthday.new
    expect(b.message).to eq "Happy Birthday, Alice!"
  end
end