require "test_helper"

class GPaisControllerTest < ActionDispatch::IntegrationTest
  test "should get descricao" do
    get g_pais_descricao_url
    assert_response :success
  end

  test "should get sigla" do
    get g_pais_sigla_url
    assert_response :success
  end
end
