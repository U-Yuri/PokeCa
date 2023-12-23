require "test_helper"

class PokecaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pokeca_index_url
    assert_response :success
  end
end
