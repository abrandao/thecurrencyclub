require 'spec_helper'
require 'json'
require './app/services/exchange_service'

describe 'Currency' do
  it 'exchange' do
    amount = rand(0..9999)
    res = ExchangeService.new("USD", "BRL", amount).perform
    expect(res.is_a? Numeric).to eql(true)
  end
end