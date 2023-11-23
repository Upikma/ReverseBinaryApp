require 'test_helper'

class ReverseBinariesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get reverse_binaries_new_url
    assert_response :success
  end

  test "should create reverse_binary" do
    post reverse_binaries_url, params: { reverse_binary: { number: 6 } }
    assert_redirected_to reverse_binary_url(ReverseBinary.last)
  end

  test "should show reverse_binary" do
    reverse_binary = ReverseBinary.create(number: 6)
    get reverse_binary_url(reverse_binary)
    assert_response :success
  end
end
