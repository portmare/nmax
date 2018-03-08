require "nmax/version"
require "nmax/integer"

module Nmax
  def self.run(argv)
    raise ArgumentError, "wrong number of arguments (given #{argv.count}, expected 1)" unless argv.count == 1

    count = Integer(argv.first, 10) rescue false
    raise ArgumentError, 'argument must be a Integer' unless count

    Nmax::Integer.new(count).perform(STDIN)
  end
end
