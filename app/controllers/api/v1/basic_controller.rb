# class for basic math generator
#
module Api
  module V1
    class BasicController < ApplicationController

      def index
        json_response(Mathematics::Basic.new(params).generate, :created)
      end

    end
  end
end
