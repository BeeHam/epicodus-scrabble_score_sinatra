class String
  define_method(:scrabble_score) do
    one_pointers = ['a','e','i','o','u','l','n','r','s','t']
    score = {one_pointers => 1}
    split_word = self.split("")

    if score.include?(one_pointers)
      score.fetch(one_pointers)
    else
      "Didn't work"
    end
  end
end
