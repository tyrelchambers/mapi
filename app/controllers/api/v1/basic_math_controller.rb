#
# class for basic math generator
#
module Api
  module V1
    class BasicMathController < ApplicationController
      def index
        params = {
          n: 10,
          symbol: 'division',
          ndigits: 1000,
        }

        json_response(BasicMathGeneratorService.new(params).generate, :created)
      end
    end
  end
end
