require "test_helper"

class AgendasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agendas_index_url
    assert_response :success
  end
end
