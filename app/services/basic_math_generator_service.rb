class BasicMathGeneratorService

  # Basic Math Generator
  #   n:       Number of equations to be returned
  #   symbol:  Type of equation IE. Adding Subtracting.
  #   ndigits: Number of placeholders for each interger term.
  def initialize(params)
    @n = params[:n]
    @symbol = params[:symbol]
    @ndigits = params[:ndigits]
  end

  def generate
    equations = []
    @n.times do
      terms = [rand(0..@ndigits), rand(0..@ndigits)]
      equation = {
        "symbol": @symbol,
        "numbers": terms,
        "outcome": equate_math(@symbol, terms)
      }
      equations << equation
    end
    equations
  end

  def equate_math(symbol, terms)
    # TODO: make into own function
    terms[0], terms[1] = terms[1], terms[0] if terms[0] < terms[1]

    case symbol
    when 'addition' then addition(terms)
    when 'subtraction' then subtraction(terms)
    when 'division' then division(terms)
    when 'multiplication' then multiplication(terms)
    end
  end

  private

  def addition(terms)
    terms[0] + terms[1]
  end

  def subtraction(terms)
    terms[0] - terms[1]
  end

  def division(terms)
    terms[0] % terms[1]
  end

  def multiplication(terms)
    terms[0] * terms[1]
  end
end
