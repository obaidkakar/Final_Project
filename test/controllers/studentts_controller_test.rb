require 'test_helper'

class StudenttsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studentt = studentts(:one)
  end

  test "should get index" do
    get studentts_url
    assert_response :success
  end

  test "should get new" do
    get new_studentt_url
    assert_response :success
  end

  test "should create studentt" do
    assert_difference('Studentt.count') do
      post studentts_url, params: { studentt: { Address: @studentt.Address, CNIC: @studentt.CNIC, Cell: @studentt.Cell, F_name: @studentt.F_name, Gender: @studentt.Gender, Local_domicail: @studentt.Local_domicail, Nationality: @studentt.Nationality, session_id: @studentt.session_id, st_name: @studentt.st_name } }
    end

    assert_redirected_to studentt_url(Studentt.last)
  end

  test "should show studentt" do
    get studentt_url(@studentt)
    assert_response :success
  end

  test "should get edit" do
    get edit_studentt_url(@studentt)
    assert_response :success
  end

  test "should update studentt" do
    patch studentt_url(@studentt), params: { studentt: { Address: @studentt.Address, CNIC: @studentt.CNIC, Cell: @studentt.Cell, F_name: @studentt.F_name, Gender: @studentt.Gender, Local_domicail: @studentt.Local_domicail, Nationality: @studentt.Nationality, session_id: @studentt.session_id, st_name: @studentt.st_name } }
    assert_redirected_to studentt_url(@studentt)
  end

  test "should destroy studentt" do
    assert_difference('Studentt.count', -1) do
      delete studentt_url(@studentt)
    end

    assert_redirected_to studentts_url
  end
end
