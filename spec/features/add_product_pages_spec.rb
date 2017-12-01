require 'rails_helper'

describe 'the adding a product process' do
  it 'adds a new product' do
    visit new_product_path
    fill_in 'Title', :with => 'Sherlock Holmes Consulting Detective'
    fill_in 'Price', :with => 34
    fill_in 'Description', :with => 'You get to be a detective'
    fill_in 'Players', :with => '1-8'
    fill_in 'Playtime', :with => '60-120 minutes'
    fill_in 'Publisher', :with => 'Asmodee Editions'
    click_on 'Create Product'
    expect(page).to have_content 'Sherlock Holmes Consulting Detective'
  end

  it 'will display error if field is left blank' do
    visit new_product_path
    fill_in 'Price', :with => 34
    fill_in 'Description', :with => 'You get to be a detective'
    fill_in 'Players', :with => '1-8'
    fill_in 'Playtime', :with => '60-120 minutes'
    fill_in 'Publisher', :with => 'Asmodee Editions'
    click_on 'Create Product'
    expect(page).to have_content "Title can't be blank"
  end
end
