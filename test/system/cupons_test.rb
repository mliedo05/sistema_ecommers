require "application_system_test_case"

class CuponsTest < ApplicationSystemTestCase
  setup do
    @cupon = cupons(:one)
  end

  test "visiting the index" do
    visit cupons_url
    assert_selector "h1", text: "Cupons"
  end

  test "creating a Cupon" do
    visit cupons_url
    click_on "New Cupon"

    fill_in "Amount", with: @cupon.amount
    fill_in "Code", with: @cupon.code
    fill_in "Discount", with: @cupon.discount
    fill_in "Type", with: @cupon.type
    fill_in "User", with: @cupon.user_id
    click_on "Create Cupon"

    assert_text "Cupon was successfully created"
    click_on "Back"
  end

  test "updating a Cupon" do
    visit cupons_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @cupon.amount
    fill_in "Code", with: @cupon.code
    fill_in "Discount", with: @cupon.discount
    fill_in "Type", with: @cupon.type
    fill_in "User", with: @cupon.user_id
    click_on "Update Cupon"

    assert_text "Cupon was successfully updated"
    click_on "Back"
  end

  test "destroying a Cupon" do
    visit cupons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cupon was successfully destroyed"
  end
end
