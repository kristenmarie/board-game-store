require 'rails_helper'

describe 'The product editing process' do
  before do
    @product = FactoryBot.create(:product)
  end

  it 'will allow admin to edit product' do
    visit edit_product_path(@product)
    fill_in 'Title', :with => 'Dead of Winter'
    click_on 'Update Product'
    expect(page). to have_content 'has been updated'
  end

  it 'will display errors if field left blank' do
    visit edit_product_path(@product)
    fill_in 'Title', :with => ' '
    click_on 'Update Product'
    expect(page). to have_content "Title can't be blank"
  end

  it 'will only allow admin to edit product' do
    user = FactoryBot.create(:user)
    visit product_path(@product)
    expect(page).to have_no_content 'Edit'
  end

end
