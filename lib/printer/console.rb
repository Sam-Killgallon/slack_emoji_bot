module Printer
  class Console
    def initialize(io = $stdout)
      @io = io
    end

    def write(string)
      io.write(string)
    end

    def flush
      io.write("\n")
    end

    private

    attr_reader :io
  end
end
