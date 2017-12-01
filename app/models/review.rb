class Review < ActiveRecord::Base
  validates :rating, :heading, :content, :name, :presence => true
  belongs_to :product
end
