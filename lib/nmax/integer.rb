require "nmax/base"

module Nmax
  class Integer < Base
    MAX_LENGTH = 1000

    def perform(io)
      super do
        io.each_line&.reduce([]) do |acc, line|
          acc += line.scan(Regexp.new("\\d{1,#{MAX_LENGTH}}"))
                     .map(&:to_i)
                     .sort
                     .last(count)
          acc.sort.last(count)
        end
      end
    end
  end
end
