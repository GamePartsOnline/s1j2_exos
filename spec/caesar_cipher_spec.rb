require_relative '../lib/caesar_cipher'

describe "the caesar_cipher method" do
  it "should cipher a simple word with lowercase letters" do
    expect(caesar_cipher("abc", 1)).to eq("bcd")
    expect(caesar_cipher("xyz", 3)).to eq("abc")
  end

  it "should keep uppercase letters as uppercase" do
    expect(caesar_cipher("ABC", 1)).to eq("BCD")
    expect(caesar_cipher("XYZ", 3)).to eq("ABC")
  end

  it "should not modify non-letter characters" do
    expect(caesar_cipher("Hello, World!", 5)).to eq("Mjqqt, Btwqi!")
  end

  it "should handle the full example" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end