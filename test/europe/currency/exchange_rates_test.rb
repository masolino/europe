# frozen_string_literal: true

require 'test_helper'

module Europe
  module Currency
    # ExchangeRatesTest
    class ExchangeRatesTest < Minitest::Test
      include Benchmark

      def setup
        WebMock.disable!
      end

      def test_retrieval_exchange_rates
        rates = Europe::Currency::ExchangeRates.retrieve
        assert rates[:rates].key?(:GBP)
      end
    end
  end
end
