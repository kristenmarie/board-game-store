require 'rails_helper'

describe 'the delete product process' do
  before do
    @user = FactoryBot.create(:user)
    @product = FactoryBot.create(:product)
    visit '/users/sign_in'
    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password
    click_on "Log in"
  end

  it 'will allow admin to delete product' do
    @user.update(admin: true)
    visit product_path(@product)
    click_link 'Delete'
    expect(page).to have_content 'Product has been removed from inventory.'
  end

  it 'will not allow a non admin user to delete a product' do
    visit product_path(@product)
    expect(page).to have_no_content 'Delete'
  end
end
