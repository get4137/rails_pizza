# frozen_string_literal: true

require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test 'should get cart' do
    get orders_cart_url
    assert_response :success
  end
end
