require 'rails_helper'

describe 'the delete review process' do
  before do
    @product = FactoryBot.create(:product)
    @user = FactoryBot.create(:user)
    visit '/users/sign_in'
    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password
    click_on "Log in"
    visit product_path(@product)
    click_link 'Write a Review'
    fill_in 'Name', :with => 'Mark'
    fill_in 'Rating', :with => 5
    fill_in 'Heading', :with => 'Dripping with Theme'
    fill_in 'Content', :with => 'Love this one. Highly recommend!'
    click_on 'Create Review'
  end

  it 'will allow admin to delete review' do
    @user.update(admin: true)
    visit product_path(@product)
    click_link 'Delete this Review'
    expect(page). to have_no_content 'Mark'
  end

  it 'will not allow a non admin user to delete a product' do
    expect(page).to have_no_content 'Delete this Review'
  end
end
