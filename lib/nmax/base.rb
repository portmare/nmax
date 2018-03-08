module Nmax
  class Base
    attr_reader :count

    def initialize(count)
      @count = count
    end

    def perform(_)
      yield
    rescue Exception => ex
      raise ex if SystemExit === ex
      $stderr.print "#{ex.class}: " if ex.class != RuntimeError
      $stderr.puts ex.message
    end
  end
end
