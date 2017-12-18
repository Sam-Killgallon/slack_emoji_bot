class EmojiSay
  def initialize(alphabet, printer)
    @alphabet = alphabet
    @printer = printer
  end

  def say(word)
    # Range is the height of the letters, ie current alphabet is
    # 6 symbols in height (alphabet[char].size == 6)
    (0..5).each do |index|
      write_line(word, index)
      printer.flush
    end
  end

  private

  attr_reader :alphabet, :printer

  def write_line(word, index)
    word.each_char do |char|
      letter_line_symbols = alphabet[char][index].join
      printer.write(letter_line_symbols)
      printer.write("\t")
    end
  end
end
