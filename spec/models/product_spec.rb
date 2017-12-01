require 'rails_helper'

describe Product do
  it { should have_many :reviews }

  describe '.recently_added' do
    it 'should return 5 most recently added products' do
      g1 = FactoryBot.create(:product)
      g2 = FactoryBot.create(:product)
      g3 = FactoryBot.create(:product)
      g4 = FactoryBot.create(:product)
      g5 = FactoryBot.create(:product)
      g6 = FactoryBot.create(:product)
      expect(Product.recently_added).to eq([g6, g5, g4, g3, g2])
    end
  end
end
