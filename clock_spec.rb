require_relative 'clock.rb'

describe Clock do
  it 'returns hours and minutes as a readable time string' do
    expect(Clock.new(hour: 24, minute: 3).to_s).to eq "24:3" # '00:03'
    # p Clock.new(hour: Time.now.hour, minute: 12).to_s
  end
end