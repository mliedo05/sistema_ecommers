require 'test_helper'

class CuponsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cupon = cupons(:one)
  end

  test "should get index" do
    get cupons_url
    assert_response :success
  end

  test "should get new" do
    get new_cupon_url
    assert_response :success
  end

  test "should create cupon" do
    assert_difference('Cupon.count') do
      post cupons_url, params: { cupon: { amount: @cupon.amount, code: @cupon.code, discount: @cupon.discount, type: @cupon.type, user_id: @cupon.user_id } }
    end

    assert_redirected_to cupon_url(Cupon.last)
  end

  test "should show cupon" do
    get cupon_url(@cupon)
    assert_response :success
  end

  test "should get edit" do
    get edit_cupon_url(@cupon)
    assert_response :success
  end

  test "should update cupon" do
    patch cupon_url(@cupon), params: { cupon: { amount: @cupon.amount, code: @cupon.code, discount: @cupon.discount, type: @cupon.type, user_id: @cupon.user_id } }
    assert_redirected_to cupon_url(@cupon)
  end

  test "should destroy cupon" do
    assert_difference('Cupon.count', -1) do
      delete cupon_url(@cupon)
    end

    assert_redirected_to cupons_url
  end
end
