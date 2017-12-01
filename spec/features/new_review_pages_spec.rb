require 'rails_helper'

describe 'Adding product review process' do
  before do
    @user = FactoryBot.create(:user)
    @product = FactoryBot.create(:product)
    visit '/users/sign_in'
    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password
    click_on "Log in"
  end

  it 'will allow user to add product review' do
    visit product_path(@product)
    click_link 'Write a Review'
    fill_in 'Name', :with => 'Mark'
    fill_in 'Rating', :with => 5
    fill_in 'Heading', :with => 'Dripping with Theme'
    fill_in 'Content', :with => 'Love this one. Highly recommend!'
    click_on 'Create Review'
    expect(page).to have_content 'Dripping with Theme'
  end

  it 'will display error if field left blank' do
    visit new_product_review_path(@product)
    fill_in 'Rating', :with => 5
    fill_in 'Heading', :with => 'Dripping with Theme'
    fill_in 'Content', :with => 'Love this one. Highly recommend!'
    click_on 'Create Review'
    expect(page).to have_content "Name can't be blank"
  end
end
