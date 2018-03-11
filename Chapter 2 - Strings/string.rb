class String
  def word_count
    frequencies = Hash.new(0)
    downcase.scan(/(\w+([-'.]\w+)*)/) do |word, ignore|
      frequencies[word] += 1
    end
    frequencies
  end
end