module Mathematics
  class Basic < Core
    def initialize(params)
      super
      @n = params[:n].to_i
      @symbol = params[:symbol]
      @ndigits = params[:ndigits].to_i
    end

    def generate
      equations = []
      @n.times do
        terms = [rand(0..@ndigits), rand(0..@ndigits)]
        equation = {
          "symbol": @symbol,
          "numbers": terms,
          "outcome": equate_math(@symbol, terms),
        }
        equations << equation
      end
      equations
    end

    def equate_math(symbol, terms)
      syms = {
        "addition" => "+".to_sym,
        "subtraction" => "-".to_sym,
        "multiplication" => "*".to_sym,
        "division" => "/".to_sym,
      }

      # TODO: make into own function
      terms[0], terms[1] = terms[1], terms[0] if terms[0] < terms[1]

      terms[0].send(syms[symbol], terms[1])
    end
  end
end
