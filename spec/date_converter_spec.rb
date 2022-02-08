require 'date_converter'

describe 'DateConverter' do
  it 'produces a text date from an input' do
    dc = DateConverter.new
    expect(dc.to_text(8, "February", 2022)).to eq "08 February 2022"
  end
end