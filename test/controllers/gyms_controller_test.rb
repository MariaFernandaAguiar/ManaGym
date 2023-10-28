require "test_helper"

class GymsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gym = gyms(:one)
  end

  test "should get index" do
    get gyms_url
    assert_response :success
  end

  test "should get new" do
    get new_gym_url
    assert_response :success
  end

  test "should create gym" do
    assert_difference("Gym.count") do
      post gyms_url, params: { gym: { cnpj_gym: @gym.cnpj_gym, endereco_gym: @gym.endereco_gym, nome_gym: @gym.nome_gym, quan_student: @gym.quan_student } }
    end

    assert_redirected_to gym_url(Gym.last)
  end

  test "should show gym" do
    get gym_url(@gym)
    assert_response :success
  end

  test "should get edit" do
    get edit_gym_url(@gym)
    assert_response :success
  end

  test "should update gym" do
    patch gym_url(@gym), params: { gym: { cnpj_gym: @gym.cnpj_gym, endereco_gym: @gym.endereco_gym, nome_gym: @gym.nome_gym, quan_student: @gym.quan_student } }
    assert_redirected_to gym_url(@gym)
  end

  test "should destroy gym" do
    assert_difference("Gym.count", -1) do
      delete gym_url(@gym)
    end

    assert_redirected_to gyms_url
  end
end
