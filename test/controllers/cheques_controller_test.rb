require 'test_helper'

class ChequesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cheque = cheques(:one)
  end

  test "should get index" do
    get cheques_url
    assert_response :success
  end

  test "should get new" do
    get new_cheque_url
    assert_response :success
  end

  test "should create cheque" do
    assert_difference('Cheque.count') do
      post cheques_url, params: { cheque: { Bank_name: @cheque.Bank_name, Cheque_no: @cheque.Cheque_no, ch_date: @cheque.ch_date } }
    end

    assert_redirected_to cheque_url(Cheque.last)
  end

  test "should show cheque" do
    get cheque_url(@cheque)
    assert_response :success
  end

  test "should get edit" do
    get edit_cheque_url(@cheque)
    assert_response :success
  end

  test "should update cheque" do
    patch cheque_url(@cheque), params: { cheque: { Bank_name: @cheque.Bank_name, Cheque_no: @cheque.Cheque_no, ch_date: @cheque.ch_date } }
    assert_redirected_to cheque_url(@cheque)
  end

  test "should destroy cheque" do
    assert_difference('Cheque.count', -1) do
      delete cheque_url(@cheque)
    end

    assert_redirected_to cheques_url
  end
end
