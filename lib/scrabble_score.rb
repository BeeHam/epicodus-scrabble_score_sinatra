class String
  define_method(:scrabble_score) do
    one_pointers = ['a','e','i','o','u','l','n','r','s','t']
    two_pointers = ["d", "g"]
    three_pointers = ["b", "c", "m", "p"]
    four_pointers = ["f", "h", "v", "w", "y"]
    five_pointers = ["k"]
    eight_pointers = ["j", "x"]
    ten_pointers = ["q", "z"]
    score = {one_pointers => 1, two_pointers => 2, three_pointers => 3, four_pointers => 4, five_pointers => 5, eight_pointers => 8, ten_pointers => 10}
    split_word = self.split("")
    letter_values = []

    split_word.each() do |letter|
      if one_pointers.include?(letter)
        letter_values.push(score.fetch(one_pointers))
      elsif two_pointers.include?(letter)
        letter_values.push(score.fetch(two_pointers))
      elsif three_pointers.include?(letter)
        letter_values.push(score.fetch(three_pointers))
      elsif four_pointers.include?(letter)
        letter_values.push(score.fetch(four_pointers))
      elsif five_pointers.include?(letter)
        letter_values.push(score.fetch(five_pointers))
      elsif eight_pointers.include?(letter)
        letter_values.push(score.fetch(eight_pointers))
      else
        letter_values.push(score.fetch(ten_pointers))
      end
    end
    letter_values
  end
end
