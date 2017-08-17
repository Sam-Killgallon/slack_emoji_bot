class Say
  def initialize(alphabet, printer = $stdout)
    @alphabet = alphabet
    @printer = printer
  end

  def word(word)
    (0..5).each do |index|
      word.each_char do |char|
        printer.write alphabet[char][index].join
        printer.write "\t"
      end
      #printer.write "\n"
      printer.flush
    end

    word
  end

  private

  attr_reader :alphabet, :printer
end
