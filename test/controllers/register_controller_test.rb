# frozen_string_literal: true

require 'test_helper'

class RegisterControllerTest < ActionDispatch::IntegrationTest
  test 'should get register_form' do
    get register_register_form_url
    assert_response :success
  end

  test 'should get register' do
    get register_register_url
    assert_response :success
  end
end
