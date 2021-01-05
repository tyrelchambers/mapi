module Mathematics
  class Core
    #   n:       Number of equations to be returned
    #   symbol:  Type of equation IE. Adding Subtracting.
    #   ndigits: Number of placeholders for each interger term.
    def initialize(params)
      @n = params[:n]
      @symbol = params[:symbol]
      @ndigits = params[:ndigits]
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
end
