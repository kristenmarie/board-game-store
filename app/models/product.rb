class Product < ActiveRecord::Base
  validates :title, :price, :description, :players, :playtime, :publisher, :presence => true

  scope :recently_added, -> { order(created_at: :desc).limit(10) }
end
