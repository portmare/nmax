require "test_helper"

class NmaxTest < Minitest::Test
  def setup
    @data = <<-EOF
      9918293 9128391283981920389012838129381 23109238018203810938 012391829038 1092381
      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur sunt, fugiat labore nisi nihil rem voluptas dicta ullam laborum veniam amet nulla cupiditate ratione quasi corporis minima ipsa iusto similique!
      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto natus minus dignissimos provident eveniet asperiores veritatis aliquid, placeat adipisci iste! Consequatur labore itaque ipsa, eum dolores quam. Commodi, aliquam, dolor.
      09823 9128309 18290391028 390182390 819023 890182309 129038 10928390182903890182308120938018230812093 8190283901829038109283091823\
      9123819238 129038190283 918290389012839018 29038190283901829308190238901823908109238 910823901829038190 238901283908129308109283
      912830918239081902839
    EOF
  end

  def test_that_it_has_a_version_number
    refute_nil ::Nmax::VERSION
  end

  def test_that_
    
  end
end
