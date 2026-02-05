require_relative '../lib/trader'

describe "the day_trader method" do
  it "should return the best buy and sell days" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
  end

  it "should work with different arrays" do
    expect(day_trader([7, 1, 5, 3, 6, 4])).to eq([1, 4])
  end

  it "should handle when best day is at the end" do
    expect(day_trader([3, 2, 1, 5])).to eq([2, 3])
  end

  it "should return valid days even with small profit" do
    expect(day_trader([5, 4, 3, 2, 1])).to eq([0, 1])
  end
end