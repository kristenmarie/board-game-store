require 'rails_helper'

describe 'The product editing process' do

  it 'will allow admin to edit product' do
    product = FactoryBot.create(:product)
    visit edit_product_path(product)
    fill_in 'Title', :with => 'Dead of Winter'
    click_on 'Update Product'
    expect(page). to have_content 'has been updated'
  end

  it 'will display errors if field left blank' do
    product = FactoryBot.create(:product)
    visit edit_product_path(product)
    fill_in 'Title', :with => ' '
    click_on 'Update Product'
    expect(page). to have_content "Title can't be blank"
  end

end
