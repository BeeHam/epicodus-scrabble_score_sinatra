require('rspec')
require('scrabble_score')

describe('String#scrabble_score') do
  # it('splits string into an array') do
  #   expect(("scrabble").scrabble_score()).to(eq(["s","c","r","a","b","b","l","e"]))
  # end

  # it("returns a value for the one point letters") do
  #   expect(("a").scrabble_score()).to(eq([1]))
  # end
  #
  # it("assigns a value to every letter in the word") do
  #   expect(("word").scrabble_score()).to(eq([4,1,1,2]))
  # end

  it("tallies letter values into score") do
    expect(("word").scrabble_score()).to(eq(8))
  end
end
