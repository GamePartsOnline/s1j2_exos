require_relative '../lib/word_counter'

describe "the word_counter method" do
  it "should count a single word" do
    dictionnaire = ["below", "low"]
    result = word_counter("below", dictionnaire)
    expect(result).to eq({"below" => 1, "low" => 1})
  end

  it "should count multiple words" do
    dictionnaire = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
    result = word_counter("Howdy partner, sit down! How's it going?", dictionnaire)
    expect(result).to eq({"down" => 1, "how" => 2, "howdy" => 1, "go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1})
  end

  it "should be case insensitive" do
    dictionnaire = ["hello"]
    result = word_counter("Hello HELLO hello", dictionnaire)
    expect(result).to eq({"hello" => 3})
  end
end